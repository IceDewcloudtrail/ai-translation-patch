from pathlib import Path
import csv
import hashlib
import struct
import sys

try:
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
except Exception:
    pass

ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "gpt_out"
REPORT = OUT_DIR / "reports" / "game_title_value_cs2.tsv"

TARGETS = [
    OUT_DIR / "ryuki_cn_gpt_ui.exe",
    OUT_DIR / "ryuki_cn_gpt_only_ui.exe",
]

# In the embedded environment-info dialog, the first row's value is pulled from
# global_title + 0x33c. That value still renders through the mojibake path, so
# point only the two ListView insertion sites at a local ASCII "CS2" string.
TITLE_TAG = b"$0000-0017$"
TITLE_LABEL = b"Game Title"
ASCII_VALUE = b"CS2\x00"
OLD_VALUE_INSN = bytes.fromhex("A1 BC 9C A7 00 05 3C 03 00 00")

# File offsets for the two ListView insertion paths. Other global-title uses
# are intentionally left alone.
PATCH_OFFSETS = [0x0012358D, 0x0012562D]


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest().upper()


def pe_sections(data: bytes) -> tuple[int, list[tuple[int, int, int, int]]]:
    pe = struct.unpack_from("<I", data, 0x3C)[0]
    if data[pe : pe + 4] != b"PE\x00\x00":
        raise RuntimeError("not a PE file")
    section_count = struct.unpack_from("<H", data, pe + 6)[0]
    optional_size = struct.unpack_from("<H", data, pe + 20)[0]
    optional = pe + 24
    image_base = struct.unpack_from("<I", data, optional + 28)[0]
    section_table = optional + optional_size
    sections = []
    for i in range(section_count):
        off = section_table + i * 40
        virtual_size, virtual_address, raw_size, raw_pointer = struct.unpack_from(
            "<IIII", data, off + 8
        )
        sections.append((virtual_address, virtual_size, raw_pointer, raw_size))
    return image_base, sections


def file_offset_to_va(data: bytes, file_offset: int) -> int:
    image_base, sections = pe_sections(data)
    for virtual_address, virtual_size, raw_pointer, raw_size in sections:
        if raw_pointer <= file_offset < raw_pointer + raw_size:
            return image_base + virtual_address + (file_offset - raw_pointer)
    raise RuntimeError(f"file offset is outside sections: 0x{file_offset:08X}")


def place_ascii_value(data: bytearray) -> tuple[int, int]:
    tag_pos = data.find(TITLE_TAG)
    if tag_pos < 0:
        raise RuntimeError("title tag not found")

    label_start = tag_pos + len(TITLE_TAG)
    if data[label_start : label_start + len(TITLE_LABEL)] != TITLE_LABEL:
        raise RuntimeError("title label is not the expected ASCII fallback")

    label_end = data.find(b"\x00", label_start)
    next_tag = data.find(b"$0000-0018$", tag_pos)
    if label_end < 0 or next_tag < 0:
        raise RuntimeError("could not find title label padding")

    value_offset = label_end + 1
    if value_offset + len(ASCII_VALUE) > next_tag:
        raise RuntimeError("not enough padding for title value")
    if any(data[value_offset + i] not in (0, 0x20) for i in range(next_tag - value_offset)):
        raise RuntimeError("title label padding is not empty")

    data[value_offset : value_offset + len(ASCII_VALUE)] = ASCII_VALUE
    value_va = file_offset_to_va(bytes(data), value_offset)
    return value_offset, value_va


def patch_target(path: Path) -> list[dict[str, str]]:
    data = bytearray(path.read_bytes())
    before = sha256(path)
    value_offset, value_va = place_ascii_value(data)
    new_insn = b"\xB8" + struct.pack("<I", value_va) + b"\x90" * 5

    rows = []
    for off in PATCH_OFFSETS:
        old = bytes(data[off : off + len(OLD_VALUE_INSN)])
        if old != OLD_VALUE_INSN:
            raise RuntimeError(f"{path} unexpected bytes at 0x{off:08X}: {old.hex(' ').upper()}")
        data[off : off + len(OLD_VALUE_INSN)] = new_insn
        rows.append(
            {
                "file": str(path),
                "patch_offset": f"0x{off:08X}",
                "old_instruction": old.hex(" ").upper(),
                "new_instruction": new_insn.hex(" ").upper(),
                "value_offset": f"0x{value_offset:08X}",
                "value_va": f"0x{value_va:08X}",
                "value": ASCII_VALUE.rstrip(b"\x00").decode("ascii"),
            }
        )

    path.write_bytes(data)
    after = sha256(path)
    for row in rows:
        row["sha256_before"] = before
        row["sha256_after"] = after
    print(f"patched {path} value_va=0x{value_va:08X} sha256={after}")
    return rows


def main() -> None:
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    rows = []
    for target in TARGETS:
        if not target.exists():
            raise FileNotFoundError(target)
        rows.extend(patch_target(target))

    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=[
                "file",
                "patch_offset",
                "old_instruction",
                "new_instruction",
                "value_offset",
                "value_va",
                "value",
                "sha256_before",
                "sha256_after",
            ],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)
    print(f"report={REPORT}")


if __name__ == "__main__":
    main()
