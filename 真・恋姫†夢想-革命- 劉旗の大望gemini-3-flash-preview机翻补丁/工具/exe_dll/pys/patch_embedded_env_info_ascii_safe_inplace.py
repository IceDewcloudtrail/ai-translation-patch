from pathlib import Path
import csv
import hashlib
import re
import sys

try:
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
except Exception:
    pass

ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "gpt_out"
REPORT = OUT_DIR / "reports" / "embedded_env_info_ascii_safe_inplace.tsv"

TARGETS = [
    OUT_DIR / "ryuki_cn_gpt_ui.exe",
    OUT_DIR / "ryuki_cn_gpt_only_ui.exe",
]

# Safe in-place version: only replaces the visible label before the first NUL.
# It preserves any hidden strings in the same fixed slot, such as cs2.exe,
# GenuineIntel, %dMHz, and Software\cs2debug\%s.
PATCHES = {
    "$0000-0015$": "Item",
    "$0000-0016$": "Data",
    "$0000-0017$": "Game Title",
    "$0000-0018$": "Game Version",
    "$0000-0019$": "System Version",
    "$0000-0020$": "PC Maker",
    "$0000-0021$": "PC Model",
    "$0000-0023$": "CPU Maker",
    "$0000-0024$": "CPU Clock",
    "$0000-0025$": "Memory",
    "$0000-0026$": "GPU",
    "$0000-0027$": "GPU Driver",
    "$0000-0028$": "Resolution",
    "$0000-0029$": "Color",
    "$0000-0030$": "32bit Full",
    "$0000-0031$": "24bit Full",
    "$0000-0032$": "16bit High",
    "$0000-0033$": "8bit Indexed",
    "$0000-0034$": "DirectX Version",
}


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest().upper()


def next_tag_pos(data: bytearray, pos: int) -> int:
    match = re.search(rb"\$0000-\d{4}\$", bytes(data[pos + 1 : pos + 512]))
    if match:
        return pos + 1 + match.start()
    nul = data.find(b"\x00", pos)
    if nul < 0:
        raise RuntimeError(f"could not find end after 0x{pos:08X}")
    return nul + 1


def patch_tag(data: bytearray, tag_text: str, replacement: str) -> dict[str, str]:
    tag = tag_text.encode("ascii")
    replacement_bytes = replacement.encode("ascii")
    pos = data.find(tag)
    if pos < 0:
        raise RuntimeError(f"tag not found: {tag_text}")

    payload_start = pos + len(tag)
    next_pos = next_tag_pos(data, pos)
    old_end = data.find(b"\x00", payload_start, next_pos)
    if old_end < 0:
        raise RuntimeError(f"terminator not found: {tag_text}")

    zero_end = old_end
    while zero_end < next_pos and data[zero_end] == 0:
        zero_end += 1

    old_payload = bytes(data[payload_start:old_end])
    hidden_tail = bytes(data[zero_end:next_pos])
    block_len = zero_end - payload_start
    max_payload_len = block_len - 1
    if len(replacement_bytes) > max_payload_len:
        raise RuntimeError(
            f"{tag_text} replacement too long: {len(replacement_bytes)} > {max_payload_len}"
        )

    data[payload_start:zero_end] = (
        replacement_bytes + b"\x00" + b"\x00" * (block_len - len(replacement_bytes) - 1)
    )

    return {
        "tag": tag_text,
        "offset": f"0x{pos:08X}",
        "old_payload_gbk": old_payload.decode("gbk", errors="replace"),
        "replacement": replacement,
        "hidden_tail_preserved_gbk": hidden_tail.decode("gbk", errors="replace"),
    }


def main() -> None:
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    rows = []
    for target in TARGETS:
        if not target.exists():
            raise FileNotFoundError(target)

        data = bytearray(target.read_bytes())
        before = sha256(target)
        file_rows = [patch_tag(data, tag, text) for tag, text in PATCHES.items()]
        target.write_bytes(data)
        after = sha256(target)

        for row in file_rows:
            row["file"] = str(target)
            row["sha256_before"] = before
            row["sha256_after"] = after
        rows.extend(file_rows)
        print(f"patched {target} rows={len(file_rows)} sha256={after}")

    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=[
                "file",
                "tag",
                "offset",
                "old_payload_gbk",
                "replacement",
                "hidden_tail_preserved_gbk",
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
