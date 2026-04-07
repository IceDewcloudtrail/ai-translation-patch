from pathlib import Path
import csv
import shutil

ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "gpt_out"
REPORT = OUT_DIR / "reports" / "menu_ui_patch.tsv"

TARGETS = [
    (OUT_DIR / "ryuki_cn_gpt.exe", OUT_DIR / "ryuki_cn_gpt_menu.exe"),
    (OUT_DIR / "ryuki_cn_gpt_only.exe", OUT_DIR / "ryuki_cn_gpt_only_menu.exe"),
]

PATCHES = [
    ("\u30b7\u30b9\u30c6\u30e0(&S)", "\u7cfb\u7edf(&S)"),
    ("\u8868\u793a(&V)", "\u663e\u793a(&V)"),
    ("\u8a2d\u5b9a(&C)", "\u8bbe\u7f6e(&C)"),
    ("\u30d8\u30eb\u30d7(&H)", "\u5e2e\u52a9(&H)"),
    ("\u30bf\u30a4\u30c8\u30eb\u753b\u9762\u306b\u623b\u308b(&T)", "\u8fd4\u56de\u6807\u9898\u753b\u9762(&T)"),
    ("\u30bb\u30fc\u30d6\u30d5\u30a9\u30eb\u30c0\u3092\u958b\u304f(&S)", "\u6253\u5f00\u5b58\u6863\u6587\u4ef6\u5939(&S)"),
    ("\u30b2\u30fc\u30e0\u306e\u7d42\u4e86(&X)", "\u9000\u51fa\u6e38\u620f(&X)"),
]


def pad_to_same_utf16le_size(old_text: str, new_text: str) -> str:
    old_len = len(old_text)
    new_len = len(new_text)
    if new_len > old_len:
        raise RuntimeError(f"replacement too long: {old_text!r} -> {new_text!r}")
    return new_text + (" " * (old_len - new_len))


def main() -> None:
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    rows = []

    for src, dst in TARGETS:
        if not src.exists():
            continue
        shutil.copy2(src, dst)
        data = bytearray(dst.read_bytes())

        for old_text, new_text_base in PATCHES:
            new_text = pad_to_same_utf16le_size(old_text, new_text_base)
            old = old_text.encode("utf-16le")
            new = new_text.encode("utf-16le")
            if len(old) != len(new):
                raise RuntimeError(f"size mismatch: {old_text!r}")

            offsets = []
            start = 0
            while True:
                pos = data.find(old, start)
                if pos < 0:
                    break
                data[pos:pos + len(old)] = new
                offsets.append(pos)
                start = pos + len(new)

            rows.append({
                "source": str(src),
                "output": str(dst),
                "old_text": old_text,
                "new_text": new_text,
                "hit_count": len(offsets),
                "offsets": ",".join(f"0x{x:08X}" for x in offsets),
                "old_len_bytes": len(old),
                "new_len_bytes": len(new),
            })

        dst.write_bytes(data)

    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["source", "output", "old_text", "new_text", "hit_count", "offsets", "old_len_bytes", "new_len_bytes"],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)

    print(f"report={REPORT}")
    for row in rows:
        print(f"{row['output']} | {row['old_text']} -> {row['new_text']} | {row['hit_count']} | {row['offsets']}")


if __name__ == "__main__":
    main()
