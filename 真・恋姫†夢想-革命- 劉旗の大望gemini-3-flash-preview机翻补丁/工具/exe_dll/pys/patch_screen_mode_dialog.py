from pathlib import Path
import csv
import shutil

ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "gpt_out"
BACKUP_DIR = OUT_DIR / "backup"
REPORT = OUT_DIR / "reports" / "screen_mode_dialog_patch.tsv"

TARGETS = [
    OUT_DIR / "ryuki_cn_gpt.exe",
    OUT_DIR / "ryuki_cn_gpt_only.exe",
    ROOT / "ryuki_cn_gpt.exe",
    ROOT / "ryuki_cn_gpt_only.exe",
]

# These three strings live inside a Windows dialog template. They are
# null-terminated UTF-16LE strings, not fixed slots. Do not pad with NULs:
# an early NUL makes the dialog parser read the following template fields from
# the wrong offset and the dialog fails to appear.
PATCHES = [
    (0x008C0992, "$0013-0001$画面モードを選択してください", "$0013-0001$请选择显示模式 by一瓶冰露"),
    (0x008C0A04, "$0013-0002$フルスクリーン", "$0013-0002$全屏模式   "),
    (0x008C0A48, "$0013-0003$ウィンドウ", "$0013-0003$窗口模式 "),
]


def main() -> None:
    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    rows = []

    for target in TARGETS:
        if not target.exists():
            continue

        backup = BACKUP_DIR / f"{target.name}.before_screen_mode_dialog_patch"
        if not backup.exists():
            shutil.copy2(target, backup)

        data = bytearray(target.read_bytes())
        changed = False

        for offset, old_text, new_text in PATCHES:
            old = old_text.encode("utf-16le")
            new = new_text.encode("utf-16le")
            if len(new) != len(old):
                raise RuntimeError(f"replacement length mismatch: {new_text} ({len(new)} != {len(old)})")

            old_at_offset = bytes(data[offset:offset + len(old)])
            if old_at_offset == old:
                status = "patched_from_original"
            elif old_at_offset.startswith(new.rstrip(b"\x20\x00")):
                status = "patched_or_repatched"
            else:
                # Allow repatching the previous broken version that used NUL padding.
                tag = old_text.split("$", 2)
                tag_prefix = f"${tag[1]}$".encode("utf-16le") if len(tag) > 1 else b""
                if tag_prefix and old_at_offset.startswith(tag_prefix):
                    status = "patched_from_same_tag"
                else:
                    raise RuntimeError(
                        f"{target} offset 0x{offset:08X} did not contain expected dialog string"
                    )

            data[offset:offset + len(old)] = new
            changed = True
            offsets = [offset]

            rows.append({
                "file": str(target),
                "status": status,
                "old_text": old_text,
                "new_text": new_text,
                "hit_count": len(offsets),
                "offsets": ",".join(f"0x{x:08X}" for x in offsets),
                "old_len": len(old),
                "new_len": len(new),
                "backup": str(backup),
            })

        if changed:
            target.write_bytes(data)

    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["file", "status", "old_text", "new_text", "hit_count", "offsets", "old_len", "new_len", "backup"],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)

    print(f"report={REPORT}")
    for row in rows:
        print(f"{row['file']} | {row['old_text']} -> {row['new_text']} | {row['hit_count']} | {row['offsets']}")


if __name__ == "__main__":
    main()
