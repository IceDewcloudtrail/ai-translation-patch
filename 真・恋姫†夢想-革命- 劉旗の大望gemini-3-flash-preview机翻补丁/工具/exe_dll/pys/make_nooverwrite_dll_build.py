from pathlib import Path
import csv
import hashlib
import shutil
import sys

try:
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
except Exception:
    pass

ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "gpt_out"
REPORT = OUT_DIR / "reports" / "nooverwrite_dll_patch.tsv"

OLD_DLL = b"cs2conf.dll"
NEW_DLL = b"cs2kumo.dll"

TARGETS = [
    (OUT_DIR / "ryuki_cn_gpt_ui.exe", OUT_DIR / "ryuki_cn_gpt_ui_nodlloverwrite.exe"),
    (OUT_DIR / "ryuki_cn_gpt_only_ui.exe", OUT_DIR / "ryuki_cn_gpt_only_ui_nodlloverwrite.exe"),
]

DLL_SRC = OUT_DIR / "cs2conf.dll"
DLL_DST = OUT_DIR / NEW_DLL.decode("ascii")


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest().upper()


def patch_import_name(src: Path, dst: Path) -> dict[str, str]:
    shutil.copy2(src, dst)
    data = bytearray(dst.read_bytes())
    count = data.count(OLD_DLL)
    if count != 1:
        raise RuntimeError(f"{src} expected one {OLD_DLL!r}, found {count}")
    pos = data.find(OLD_DLL)
    if len(OLD_DLL) != len(NEW_DLL):
        raise RuntimeError("new DLL name must be the same byte length")
    data[pos:pos + len(OLD_DLL)] = NEW_DLL
    dst.write_bytes(data)
    return {
        "source": str(src),
        "output": str(dst),
        "old_dll": OLD_DLL.decode("ascii"),
        "new_dll": NEW_DLL.decode("ascii"),
        "offset": f"0x{pos:08X}",
        "sha256": sha256(dst),
    }


def patch_dll_export_name(path: Path) -> str:
    data = bytearray(path.read_bytes())
    count = data.count(OLD_DLL)
    if count != 1:
        raise RuntimeError(f"{path} expected one DLL export name {OLD_DLL!r}, found {count}")
    pos = data.find(OLD_DLL)
    data[pos:pos + len(OLD_DLL)] = NEW_DLL
    path.write_bytes(data)
    return f"0x{pos:08X}"


def main() -> None:
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    rows = []

    if not DLL_SRC.exists():
        raise FileNotFoundError(DLL_SRC)
    shutil.copy2(DLL_SRC, DLL_DST)
    export_name_offset = patch_dll_export_name(DLL_DST)
    print(f"wrote {DLL_DST} export name {OLD_DLL.decode('ascii')} -> {NEW_DLL.decode('ascii')} at {export_name_offset} sha256={sha256(DLL_DST)}")

    for src, dst in TARGETS:
        if not src.exists():
            print(f"skip missing {src}")
            continue
        row = patch_import_name(src, dst)
        rows.append(row)
        print(f"wrote {dst} import {row['old_dll']} -> {row['new_dll']} at {row['offset']} sha256={row['sha256']}")

    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["source", "output", "old_dll", "new_dll", "offset", "sha256"],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)
    print(f"report={REPORT}")


if __name__ == "__main__":
    main()
