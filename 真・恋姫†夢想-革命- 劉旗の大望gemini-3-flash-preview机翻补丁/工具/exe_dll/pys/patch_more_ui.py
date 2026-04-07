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
REPORT = OUT_DIR / "reports" / "more_ui_patch.tsv"

EXE_TARGETS = [
    (OUT_DIR / "ryuki_cn_gpt_menu.exe", OUT_DIR / "ryuki_cn_gpt_ui.exe"),
    (OUT_DIR / "ryuki_cn_gpt_only_menu.exe", OUT_DIR / "ryuki_cn_gpt_only_ui.exe"),
]

DLL_TARGETS = [
    (ROOT / "cs2conf.dll", OUT_DIR / "cs2conf.dll"),
]

ROOT_GPT_FILES = [
    ROOT / "ryuki_cn_gpt.exe",
    ROOT / "ryuki_cn_gpt_only.exe",
]

EXPECTED_ROOT_HASHES = {
    "ryuki_cn_gpt.exe": "2A575F45017E5A10F09CCB43DFB063F91835F1B8D63EB27DCBBF9C30C139C645",
    "ryuki_cn_gpt_only.exe": "89DB34206A5695FD4C37D49A4D7446A949C87F52297CE9247F88F4865F6F65B4",
}

# UTF-16LE dialog/menu resources. Keep byte size identical and pad with UTF-16
# spaces, not NULs, so dialog template string terminators do not move.
UTF16_PATCHES = [
    ("\u30e1\u30c3\u30bb\u30fc\u30b8\u30a6\u30a3\u30f3\u30c9\u30a6\u4f4d\u7f6e\u3092\u623b\u3059(&R)", "\u91cd\u7f6e\u6d88\u606f\u7a97\u53e3\u4f4d\u7f6e(&R)"),
    ("\u30b2\u30fc\u30e0\u74b0\u5883\u8a2d\u5b9a(&C)", "\u6e38\u620f\u73af\u5883\u8bbe\u7f6e(&C)"),
    ("\u30b2\u30fc\u30e0\u74b0\u5883\u8bbe\u7f6e(&C)", "\u6e38\u620f\u73af\u5883\u8bbe\u7f6e(&C)"),
    ("\u30b7\u30b9\u30c6\u30e0\u30dc\u30ea\u30e5\u30fc\u30e0\u8a2d\u5b9a(&V)", "\u7cfb\u7edf\u97f3\u91cf\u8bbe\u7f6e(&V)"),
    ("\u30b7\u30b9\u30c6\u30e0\u74b0\u5883\u8a2d\u5b9a(&S)", "\u7cfb\u7edf\u73af\u5883\u8bbe\u7f6e(&S)"),
    ("\u30d0\u30fc\u30b8\u30e7\u30f3\u60c5\u5831(&A)", "\u7248\u672c\u4fe1\u606f(&A)"),
    ("\u30b7\u30b9\u30c6\u30e0\u8a73\u7d30\u60c5\u5831(&I)", "\u7cfb\u7edf\u8be6\u7ec6\u4fe1\u606f(&I)"),
    ("\u30b7\u30b9\u30c6\u30e0\u60c5\u5831(&S)", "\u7cfb\u7edf\u4fe1\u606f(&S)"),
    ("\u30d5\u30eb\u30b9\u30af\u30ea\u30fc\u30f3(&F)", "\u5168\u5c4f\u6a21\u5f0f(&F)"),
    ("\u30a6\u30a3\u30f3\u30c9\u30a6(&W)", "\u7a97\u53e3\u6a21\u5f0f(&W)"),
    ("\u30de\u30cb\u30e5\u30a2\u30eb(&M)", "\u624b\u518c(&M)"),
    ("\u30bb\u30fc\u30d6\u30d5\u30a9\u30eb\u30c0\u306e\u8a2d\u5b9a(&S)", "\u5b58\u6863\u6587\u4ef6\u5939\u8bbe\u7f6e(&S)"),
    ("\u30c7\u30d0\u30c3\u30b0(&D)", "\u8c03\u8bd5(&D)"),
    ("\u753b\u9762\u30ad\u30e3\u30d7\u30c1\u30e3(BMP)(&P)", "\u5c4f\u5e55\u622a\u56fe(BMP)(&P)"),
    ("\u753b\u9762\u30ad\u30e3\u30d7\u30c1\u30e3(JPG)(&J)", "\u5c4f\u5e55\u622a\u56fe(JPG)(&J)"),
    ("\u30e1\u30c3\u30bb\u30fc\u30b8\u30ea\u30b9\u30c8(&M)", "\u6d88\u606f\u5217\u8868(&M)"),
    ("\u30b7\u30fc\u30f3\u30ea\u30b9\u30c8(&S)", "\u573a\u666f\u5217\u8868(&S)"),
    ("\u5168\u3066\u306e\u30a4\u30e1\u30fc\u30b8\u3092\u4fdd\u5b58(&I)", "\u4fdd\u5b58\u5168\u90e8\u56fe\u50cf(&I)"),
    ("\u30c7\u30d0\u30c3\u30b0\u30ed\u30b0(&L)", "\u8c03\u8bd5\u65e5\u5fd7(&L)"),

    ("\u30dc\u30bf\u30f3\u3092\u62bc\u3059\u3068\u30b7\u30b9\u30c6\u30e0\u74b0\u5883\u8a2d\u5b9a\u30a6\u30a3\u30f3\u30c9\u30a6\u304c\u958b\u304d\u307e\u3059\u3002", "\u6309\u4e0b\u6309\u94ae\u5c06\u6253\u5f00\u7cfb\u7edf\u73af\u5883\u8bbe\u7f6e\u7a97\u53e3\u3002"),
    ("\u30b7\u30b9\u30c6\u30e0\u74b0\u5883\u8a2d\u5b9a\u3092\u958b\u304f", "\u6253\u5f00\u7cfb\u7edf\u73af\u5883\u8bbe\u7f6e"),
    ("\u30b7\u30b9\u30c6\u30e0\u74b0\u5883\u8a2d\u5b9a", "\u7cfb\u7edf\u73af\u5883\u8bbe\u7f6e"),

    ("\u30d5\u30eb\u30b9\u30af\u30ea\u30fc\u30f3\u6642\u306e\u30e1\u30c3\u30bb\u30fc\u30b8\u30a6\u30a3\u30f3\u30c9\u30a6\u306e\u8868\u793a\u4f4d\u7f6e\u3092\u30a6\u30a3\u30f3\u30c9\u30a6\u30e2\u30fc\u30c9\u6642\u3068\u540c\u3058\u521d\u671f\u4f4d\u7f6e\u306b\u3057\u307e\u3059", "\u5168\u5c4f\u65f6\u5c06\u6d88\u606f\u7a97\u53e3\u663e\u793a\u4f4d\u7f6e\u8bbe\u4e3a\u4e0e\u7a97\u53e3\u6a21\u5f0f\u76f8\u540c\u7684\u9ed8\u8ba4\u4f4d\u7f6e"),
    ("\u30d5\u30eb\u30b9\u30af\u30ea\u30fc\u30f3\u6642\u306e\u30e1\u30c3\u30bb\u30fc\u30b8\u30a6\u30a3\u30f3\u30c9\u30a6\u306e\u521d\u671f\u8868\u793a\u4f4d\u7f6e\u3092\u753b\u9762\u4e0b\u306b\u3057\u307e\u3059", "\u5168\u5c4f\u65f6\u5c06\u6d88\u606f\u7a97\u53e3\u9ed8\u8ba4\u663e\u793a\u5728\u753b\u9762\u4e0b\u65b9"),
    ("\u30d5\u30eb\u30b9\u30af\u30ea\u30fc\u30f3\u6642\u306e\u30e1\u30c3\u30bb\u30fc\u30b8\u30a6\u30a3\u30f3\u30c9\u30a6\u306e\u521d\u671f\u8868\u793a\u4f4d\u7f6e\u3092\u753b\u9762\u4e0a\u306b\u3057\u307e\u3059", "\u5168\u5c4f\u65f6\u5c06\u6d88\u606f\u7a97\u53e3\u9ed8\u8ba4\u663e\u793a\u5728\u753b\u9762\u4e0a\u65b9"),
    ("\u30e1\u30c3\u30bb\u30fc\u30b8\u30a6\u30a3\u30f3\u30c9\u30a6\u4f4d\u7f6e", "\u6d88\u606f\u7a97\u53e3\u4f4d\u7f6e"),
    ("\u65e2\u8aad\u30e1\u30c3\u30bb\u30fc\u30b8\u306e\u77ac\u9593\u8868\u793a", "\u5df2\u8bfb\u6d88\u606f\u77ac\u65f6\u663e\u793a"),
    ("\u9078\u629e\u80a2\u5f8c\u306e\u30aa\u30fc\u30c8\u30e2\u30fc\u30c9\u3092\u7d99\u7d9a", "\u9009\u9879\u540e\u7ee7\u7eed\u81ea\u52a8\u6a21\u5f0f"),
    ("\u307e\u3060\u8aad\u3093\u3067\u3044\u306a\u3044\u30e1\u30c3\u30bb\u30fc\u30b8\u306e\u30b9\u30ad\u30c3\u30d7\u3092\u53ef\u80fd\u306b\u3059\u308b", "\u5141\u8bb8\u8df3\u8fc7\u672a\u8bfb\u6d88\u606f"),
    ("\u5c65\u6b74\u306b\u6b8b\u3059\u6700\u5927\u6587\u7ae0\u6570\uff1a", "\u5386\u53f2\u8bb0\u5f55\u6700\u5927\u6587\u672c\u6570\uff1a"),
    ("\u5c65\u6b74\u306b\u6b8b\u3059\u6700\u5927\u6587\u7ae0\u6570", "\u5386\u53f2\u8bb0\u5f55\u6700\u5927\u6587\u672c\u6570"),
    ("\u30aa\u30fc\u30c8\u30e2\u30fc\u30c9\u306e\u901f\u5ea6", "\u81ea\u52a8\u6a21\u5f0f\u901f\u5ea6"),
    ("\u30aa\u30fc\u30c8\u30e2\u30fc\u30c9\u306e\u3068\u304d", "\u81ea\u52a8\u6a21\u5f0f\u65f6"),
    ("\u57fa\u672c\u306e\u5f85\u3061\u6642\u9593", "\u57fa\u672c\u7b49\u5f85\u65f6\u95f4"),
    ("1\u6587\u5b57\u3042\u305f\u308a\u306e\u5f85\u3061\u6642\u9593", "\u6bcf\u5b57\u7b49\u5f85\u65f6\u95f4"),
    ("\u30b5\u30f3\u30d7\u30eb\u30e1\u30c3\u30bb\u30fc\u30b8", "\u793a\u4f8b\u6d88\u606f"),
    ("\u30e1\u30c3\u30bb\u30fc\u30b8\u901f\u5ea6", "\u6d88\u606f\u901f\u5ea6"),
    ("\u30e1\u30c3\u30bb\u30fc\u30b8", "\u6d88\u606f"),
    ("\u8a73\u7d30\u8a2d\u5b9a", "\u8be6\u7ec6\u8bbe\u7f6e"),

    ("\u30b8\u30e7\u30a4\u30d1\u30c3\u30c9\u3092\u6709\u52b9\u306b\u3059\u308b", "\u542f\u7528\u6e38\u620f\u624b\u67c4"),
    ("\u5165\u529b\u30c7\u30d0\u30a4\u30b9\u306e\u9078\u629e", "\u9009\u62e9\u8f93\u5165\u8bbe\u5907"),
    ("\u30dc\u30bf\u30f3\u30ea\u30b9\u30c8", "\u6309\u94ae\u5217\u8868"),
    ("\u30ad\u30fc\u30dc\u30fc\u30c9 1", "\u952e\u76d8 1"),
    ("\u30ad\u30fc\u30dc\u30fc\u30c9 2", "\u952e\u76d8 2"),
    ("\u30de\u30a6\u30b9 1", "\u9f20\u6807 1"),
    ("\u30de\u30a6\u30b9 2", "\u9f20\u6807 2"),
    ("\u30b8\u30e7\u30a4\u30d1\u30c3\u30c9 1", "\u624b\u67c4 1"),
    ("\u30b8\u30e7\u30a4\u30d1\u30c3\u30c9 2", "\u624b\u67c4 2"),
    ("\u30dc\u30bf\u30f3 1", "\u6309\u94ae 1"),
    ("\u30dc\u30bf\u30f3 2", "\u6309\u94ae 2"),
    ("\u30dc\u30bf\u30f3 3", "\u6309\u94ae 3"),
    ("\u30dc\u30bf\u30f3 4", "\u6309\u94ae 4"),
    ("\u30ea\u30d4\u30fc\u30c8", "\u91cd\u590d"),
    ("\u5165\u529b", "\u8f93\u5165"),
    ("\u521d\u671f\u5024\u306b\u623b\u3059", "\u6062\u590d\u9ed8\u8ba4\u503c"),

    ("\u30b7\u30b9\u30c6\u30e0\u60c5\u5831\u3092 info.txt \u306b\u4fdd\u5b58\u3059\u308b", "\u5c06\u7cfb\u7edf\u4fe1\u606f\u4fdd\u5b58\u5230 info.txt"),
    ("\u74b0\u5883\u8a2d\u5b9a\u306e\u30bf\u30a4\u30d7", "\u73af\u5883\u8bbe\u7f6e\u7c7b\u578b"),
    ("\u7c21\u6613\u30e2\u30fc\u30c9", "\u7b80\u6613\u6a21\u5f0f"),
    ("\u8a73\u7d30\u30e2\u30fc\u30c9", "\u8be6\u7ec6\u6a21\u5f0f"),
    ("\u30e2\u30fc\u30c9\u5909\u66f4", "\u6a21\u5f0f\u5207\u6362"),
    ("\u30b7\u30b9\u30c6\u30e0\u60c5\u5831", "\u7cfb\u7edf\u4fe1\u606f"),
    ("PC\u30ec\u30dd\u30fc\u30c8.txt", "PC\u62a5\u544a.txt"),

    ("\u74b0\u5883\u8a2d\u5b9a\u3092\u8d77\u52d5\u3057\u3066\u3044\u307e\u3059", "\u6b63\u5728\u542f\u52a8\u73af\u5883\u8bbe\u7f6e"),
    ("\u74b0\u5883\u4f9d\u5b58", "\u4f9d\u8d56\u73af\u5883"),
    ("\u30b7\u30b9\u30c6\u30e0\u30ab\u30fc\u30bd\u30eb", "\u7cfb\u7edf\u5149\u6807"),
    ("\u8a2d\u5b9a\u3092\u521d\u671f\u5024\u306b\u623b\u3057\u307e\u3059", "\u5c06\u8bbe\u7f6e\u6062\u590d\u4e3a\u9ed8\u8ba4\u503c"),
    ("\u30b2\u30fc\u30e0\u8d77\u52d5\u6642\u306bPC\u74b0\u5883\u60c5\u5831\u30d5\u30a1\u30a4\u30eb(info.txt)\u3092\u4f5c\u6210\u3057\u306a\u3044\u3053\u3068\u3067", "\u6e38\u620f\u542f\u52a8\u65f6\u4e0d\u521b\u5efaPC\u73af\u5883\u4fe1\u606f\u6587\u4ef6(info.txt)\uff0c"),
    ("\u74b0\u5883\u306b\u3088\u3063\u3066\u306f\u6709\u52b9\u306b\u3057\u3066\u3044\u3066\u3082\u30c6\u30a3\u30a2\u30ea\u30f3\u30b0\u304c\u767a\u751f\u3059\u308b\u5834\u5408\u304c\u3042\u308a\u307e\u3059", "\u6839\u636e\u73af\u5883\u4e0d\u540c\uff0c\u542f\u7528\u540e\u4ecd\u53ef\u80fd\u53d1\u751f\u753b\u9762\u6495\u88c2"),
    ("\u74b0\u5883\u306b\u3088\u3063\u3066\u5de6\u53f3\u3069\u3061\u3089\u304b\u306e\u97f3\u304c\u6d88\u3048\u3066\u3057\u307e\u3046\u5834\u5408\u306fOFF\u306b\u3057\u3066\u4e0b\u3055\u3044", "\u5982\u679c\u6839\u636e\u73af\u5883\u5de6\u53f3\u4efb\u4e00\u58f0\u9053\u6d88\u5931\uff0c\u8bf7\u8bbe\u4e3aOFF"),

    ("\u901f\u3044", "\u5feb"),
    ("\u9045\u3044", "\u6162"),
]

# ANSI strings in cs2conf.dll. These are encoded as CP932 originally and are
# replaced with GBK Chinese at the same byte length.
CP932_TO_GBK_PATCHES = [
    ("\u30b7\u30b9\u30c6\u30e0\u74b0\u5883\u8a2d\u5b9a", "\u7cfb\u7edf\u73af\u5883\u8bbe\u7f6e"),
    ("\u30b7\u30b9\u30c6\u30e0\u60c5\u5831", "\u7cfb\u7edf\u4fe1\u606f"),
    ("\u74b0\u5883\u8a2d\u5b9a\u3092\u8d77\u52d5\u3057\u3066\u3044\u307e\u3059", "\u6b63\u5728\u542f\u52a8\u73af\u5883\u8bbe\u7f6e"),
    ("PC\u30ec\u30dd\u30fc\u30c8.txt", "PC\u62a5\u544a.txt"),
]


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest().upper()


def pad_utf16_text(old_text: str, new_text: str) -> str:
    if len(new_text) > len(old_text):
        raise RuntimeError(f"UTF-16 replacement too long: {old_text!a} -> {new_text!a}")
    return new_text + (" " * (len(old_text) - len(new_text)))


def pad_bytes(old_bytes: bytes, new_bytes: bytes) -> bytes:
    if len(new_bytes) > len(old_bytes):
        raise RuntimeError(f"byte replacement too long: {old_bytes!r} -> {new_bytes!r}")
    return new_bytes + (b" " * (len(old_bytes) - len(new_bytes)))


def replace_all(data: bytearray, old: bytes, new: bytes) -> list[int]:
    if len(old) != len(new):
        raise RuntimeError("internal size mismatch")
    offsets = []
    start = 0
    while True:
        pos = data.find(old, start)
        if pos < 0:
            return offsets
        data[pos:pos + len(old)] = new
        offsets.append(pos)
        start = pos + len(new)


def patch_utf16_file(path: Path, patches: list[tuple[str, str]], rows: list[dict[str, str]]) -> None:
    data = bytearray(path.read_bytes())
    for old_text, new_base in sorted(patches, key=lambda x: len(x[0]), reverse=True):
        padded = pad_utf16_text(old_text, new_base)
        old = old_text.encode("utf-16le")
        new = padded.encode("utf-16le")
        offsets = replace_all(data, old, new)
        rows.append({
            "file": str(path),
            "encoding": "utf-16le",
            "old_text": old_text,
            "new_text": padded,
            "hit_count": str(len(offsets)),
            "offsets": ",".join(f"0x{x:08X}" for x in offsets),
            "old_len_bytes": str(len(old)),
            "new_len_bytes": str(len(new)),
        })
    path.write_bytes(data)


def patch_cp932_to_gbk_file(path: Path, patches: list[tuple[str, str]], rows: list[dict[str, str]]) -> None:
    data = bytearray(path.read_bytes())
    for old_text, new_text in sorted(patches, key=lambda x: len(x[0].encode("cp932")), reverse=True):
        old = old_text.encode("cp932")
        new = pad_bytes(old, new_text.encode("gbk"))
        offsets = replace_all(data, old, new)
        rows.append({
            "file": str(path),
            "encoding": "cp932->gbk",
            "old_text": old_text,
            "new_text": new_text,
            "hit_count": str(len(offsets)),
            "offsets": ",".join(f"0x{x:08X}" for x in offsets),
            "old_len_bytes": str(len(old)),
            "new_len_bytes": str(len(new)),
        })
    path.write_bytes(data)


def main() -> None:
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    rows: list[dict[str, str]] = []

    before_hashes = {p.name: sha256(p) for p in ROOT_GPT_FILES if p.exists()}

    for src, dst in EXE_TARGETS:
        if not src.exists():
            print(f"skip missing exe source: {src}")
            continue
        shutil.copy2(src, dst)
        patch_utf16_file(dst, UTF16_PATCHES, rows)
        print(f"wrote {dst} ({dst.stat().st_size} bytes)")

    for src, dst in DLL_TARGETS:
        if not src.exists():
            print(f"skip missing dll source: {src}")
            continue
        shutil.copy2(src, dst)
        patch_utf16_file(dst, UTF16_PATCHES, rows)
        patch_cp932_to_gbk_file(dst, CP932_TO_GBK_PATCHES, rows)
        print(f"wrote {dst} ({dst.stat().st_size} bytes)")

    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["file", "encoding", "old_text", "new_text", "hit_count", "offsets", "old_len_bytes", "new_len_bytes"],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)

    print(f"report={REPORT}")
    print("nonzero patches:")
    for row in rows:
        if row["hit_count"] != "0":
            print(f"{Path(row['file']).name}\t{row['encoding']}\t{row['old_text']!a}\t{row['new_text']!a}\t{row['hit_count']}\t{row['offsets']}")

    after_hashes = {p.name: sha256(p) for p in ROOT_GPT_FILES if p.exists()}
    print("root GPT exe hash check:")
    for name, after in after_hashes.items():
        before = before_hashes.get(name)
        expected = EXPECTED_ROOT_HASHES.get(name)
        status = "OK" if before == after and (expected is None or expected == after) else "CHANGED"
        print(f"{name}\t{status}\t{after}")


if __name__ == "__main__":
    main()
