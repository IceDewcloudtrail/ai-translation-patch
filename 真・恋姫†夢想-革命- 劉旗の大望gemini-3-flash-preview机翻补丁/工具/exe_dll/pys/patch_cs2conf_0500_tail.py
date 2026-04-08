from pathlib import Path
import csv
import sys

try:
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
except Exception:
    pass

ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "gpt_out"
TARGET = OUT_DIR / "cs2conf.dll"
REPORT = OUT_DIR / "reports" / "cs2conf_0500_tail_patch.tsv"

# Remaining ANSI $0500 string-table entries. These must be GBK for Chinese
# locale display. Patch by tag to avoid accidental replacement of short byte
# sequences elsewhere in the DLL.
PATCHES = [
    ("$0500-0019$", "\u30b2\u30fc\u30e0\u30bf\u30a4\u30c8\u30eb", "\u6e38\u620f\u6807\u9898"),
    ("$0500-0020$", "\u30b2\u30fc\u30e0\u30d0\u30fc\u30b8\u30e7\u30f3", "\u6e38\u620f\u7248\u672c"),
    ("$0500-0022$", "\u30b7\u30b9\u30c6\u30e0\u30d0\u30fc\u30b8\u30e7\u30f3", "\u7cfb\u7edf\u7248\u672c"),
    ("$0500-0023$", "\uff30\uff23\u30e1\u30fc\u30ab\u30fc\u540d", "PC\u5382\u5546\u540d"),
    ("$0500-0024$", "\uff30\uff23\u30e2\u30c7\u30eb\u540d", "PC\u673a\u578b\u540d"),
    ("$0500-0025$", "\uff2f\uff33", "OS"),
    ("$0500-0026$", "\uff23\uff30\uff35\u30e1\u30fc\u30ab\u30fc", "CPU\u5382\u5546"),
    ("$0500-0027$", "\uff23\uff30\uff35\u30af\u30ed\u30c3\u30af(\u6e2c\u5b9a\u5024)", "CPU\u9891\u7387(\u6d4b\u5b9a\u503c)"),
    ("$0500-0029$", "\u7a7a\u304d\u30e1\u30e2\u30ea\uff0f\u5168\u30e1\u30e2\u30ea", "\u53ef\u7528\u5185\u5b58/\u603b\u5185\u5b58"),
    ("$0500-0031$", "\u30d3\u30c7\u30aa\u30ab\u30fc\u30c9", "\u663e\u5361"),
    ("$0500-0032$", "\u30d3\u30c7\u30aa\u30c9\u30e9\u30a4\u30d0\u30d0\u30fc\u30b8\u30e7\u30f3", "\u663e\u5361\u9a71\u52a8\u7248\u672c"),
    ("$0500-0033$", "\u753b\u9762\u89e3\u50cf\u5ea6", "\u5c4f\u5e55\u5206\u8fa8\u7387"),
    ("$0500-0035$", "\u753b\u9762\u8272\u6570", "\u8272\u5f69\u4f4d\u6570"),
    ("$0500-0036$", "32bit \u30d5\u30eb\u30ab\u30e9\u30fc", "32bit \u5168\u5f69"),
    ("$0500-0037$", "24bit \u30d5\u30eb\u30ab\u30e9\u30fc", "24bit \u5168\u5f69"),
    ("$0500-0038$", "16bit \u30cf\u30a4\u30ab\u30e9\u30fc", "16bit \u9ad8\u5f69"),
    ("$0500-0039$", "8bit \u30a4\u30f3\u30c7\u30c3\u30af\u30b9\u30ab\u30e9\u30fc", "8bit \u7d22\u5f15\u8272"),
    ("$0500-0040$", "DirectX \u30d0\u30fc\u30b8\u30e7\u30f3", "DirectX \u7248\u672c"),
]


def pad_bytes(old: bytes, new: bytes) -> bytes:
    if len(new) > len(old):
        raise RuntimeError(f"replacement too long: {old!r} -> {new!r}")
    return new + b" " * (len(old) - len(new))


def main() -> None:
    data = bytearray(TARGET.read_bytes())
    rows = []

    for tag, old_text, new_text in PATCHES:
        tag_bytes = tag.encode("ascii")
        old_payload = old_text.encode("cp932")
        new_payload = new_text.encode("gbk")
        old_entry = tag_bytes + old_payload
        new_entry = tag_bytes + pad_bytes(old_payload, new_payload)

        offsets = []
        start = 0
        while True:
            pos = data.find(old_entry, start)
            if pos < 0:
                break
            data[pos:pos + len(old_entry)] = new_entry
            offsets.append(pos)
            start = pos + len(new_entry)

        rows.append({
            "tag": tag,
            "old_text": old_text,
            "new_text": new_text,
            "old_bytes_len": str(len(old_payload)),
            "new_bytes_len": str(len(new_payload)),
            "hit_count": str(len(offsets)),
            "offsets": ",".join(f"0x{x:08X}" for x in offsets),
        })

    TARGET.write_bytes(data)
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["tag", "old_text", "new_text", "old_bytes_len", "new_bytes_len", "hit_count", "offsets"],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)

    print(f"patched {TARGET}")
    print(f"report={REPORT}")
    for row in rows:
        print(f"{row['tag']}\t{row['old_text']}\t{row['new_text']}\t{row['hit_count']}\t{row['offsets']}")


if __name__ == "__main__":
    main()
