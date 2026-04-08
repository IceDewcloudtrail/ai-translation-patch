from __future__ import annotations

import csv
import hashlib
import struct
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "gpt_out"
REPORT = OUT_DIR / "reports" / "font_enum_charset_patch.tsv"

TARGETS = [
    OUT_DIR / "ryuki_cn_gpt_ui.exe",
    OUT_DIR / "ryuki_cn_gpt_only_ui.exe",
]

FONT_ENUM_WRAPPER_RVA = 0x00251280
OLD_PUSH_SHIFTJIS = bytes.fromhex("68 80 00 00 00")
OLD_PUSH_ANY_CHARSET = bytes.fromhex("68 FF FF FF FF")
NEW_PUSH_GB2312 = bytes.fromhex("68 86 00 00 00")


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest().upper()


def text_section(data: bytes) -> tuple[int, int, int]:
    pe = struct.unpack_from("<I", data, 0x3C)[0]
    imagebase = struct.unpack_from("<I", data, pe + 24 + 28)[0]
    number_of_sections = struct.unpack_from("<H", data, pe + 6)[0]
    optional_header_size = struct.unpack_from("<H", data, pe + 20)[0]
    section_table = pe + 24 + optional_header_size

    for i in range(number_of_sections):
        off = section_table + i * 40
        name = data[off : off + 8].split(b"\0", 1)[0]
        virtual_size, virtual_address, raw_size, raw_address = struct.unpack_from(
            "<IIII", data, off + 8
        )
        if name == b".text":
            text_va = imagebase + virtual_address
            return text_va, raw_address, raw_size

    raise RuntimeError(".text section not found")


def patch_file(path: Path) -> list[dict[str, str]]:
    data = bytearray(path.read_bytes())
    text_va, text_raw, text_size = text_section(data)
    target_va = text_va + FONT_ENUM_WRAPPER_RVA - 0x1000
    rows: list[dict[str, str]] = []

    text_end = text_raw + text_size
    for pos in range(text_raw, text_end - 5):
        if data[pos] != 0xE8:
            continue

        call_va = text_va + (pos - text_raw)
        rel = struct.unpack_from("<i", data, pos + 1)[0]
        call_target = (call_va + 5 + rel) & 0xFFFFFFFF
        if call_target != target_va:
            continue

        window_start = max(text_raw, pos - 24)
        window = bytes(data[window_start:pos])
        old_idx = window.rfind(OLD_PUSH_SHIFTJIS)
        old_any_idx = window.rfind(OLD_PUSH_ANY_CHARSET)
        new_idx = window.rfind(NEW_PUSH_GB2312)

        if old_idx >= 0:
            push_offset = window_start + old_idx
            data[push_offset : push_offset + len(OLD_PUSH_SHIFTJIS)] = NEW_PUSH_GB2312
            status = "patched"
        elif old_any_idx >= 0:
            push_offset = window_start + old_any_idx
            data[push_offset : push_offset + len(OLD_PUSH_ANY_CHARSET)] = NEW_PUSH_GB2312
            status = "patched_from_any"
        elif new_idx >= 0:
            push_offset = window_start + new_idx
            status = "already"
        else:
            push_offset = -1
            status = "no_charset_arg"

        rows.append(
            {
                "file": str(path),
                "status": status,
                "call_offset": f"0x{pos:08X}",
                "call_va": f"0x{call_va:08X}",
                "push_offset": "" if push_offset < 0 else f"0x{push_offset:08X}",
            }
        )

    patched_count = sum(1 for row in rows if row["status"].startswith("patched"))
    already_count = sum(1 for row in rows if row["status"] == "already")
    if patched_count == 0 and already_count == 0:
        raise RuntimeError(f"no font enum charset call sites found in {path}")

    path.write_bytes(data)
    return rows


def main() -> None:
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    all_rows: list[dict[str, str]] = []
    for target in TARGETS:
        if not target.exists():
            raise FileNotFoundError(target)
        rows = patch_file(target)
        all_rows.extend(rows)
        patched_count = sum(1 for row in rows if row["status"].startswith("patched"))
        already_count = sum(1 for row in rows if row["status"] == "already")
        no_arg_count = sum(1 for row in rows if row["status"] == "no_charset_arg")
        print(
            f"patched {target} patched={patched_count} already={already_count} "
            f"no_charset_arg={no_arg_count} sha256={sha256(target)}"
        )

    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["file", "status", "call_offset", "call_va", "push_offset"],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(all_rows)

    print(f"report={REPORT}")


if __name__ == "__main__":
    main()
