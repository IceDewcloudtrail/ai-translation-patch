from pathlib import Path
import csv
import sys

try:
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
except Exception:
    pass

ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "gpt_out"
REPORT = OUT_DIR / "reports" / "cs2conf_zh_env_patch.tsv"
TARGET = OUT_DIR / "cs2conf.dll"

UTF16_PATCHES = [
    ("\u5168\u822c", "\u5e38\u89c4"),
    ("\u8868\u793a 1", "\u663e\u793a 1"),
    ("\u8868\u793a 2", "\u663e\u793a 2"),
    ("3D\u8a2d\u5b9a 1", "3D\u8bbe\u7f6e 1"),
    ("3D\u8a2d\u5b9a 2", "3D\u8bbe\u7f6e 2"),
    ("3D\u8a2d\u5b9a", "3D\u8bbe\u7f6e"),
    ("\u8d77\u52d5\u6642\u306e\u30b9\u30af\u30ea\u30fc\u30f3\u30e2\u30fc\u30c9", "\u542f\u52a8\u65f6\u5c4f\u5e55\u6a21\u5f0f"),
    ("\u524d\u56de\u30b2\u30fc\u30e0\u7d42\u4e86\u6642\u306e\u8a2d\u5b9a\u3092\u4f7f\u7528\u3059\u308b", "\u4f7f\u7528\u4e0a\u6b21\u9000\u51fa\u65f6\u8bbe\u7f6e"),
    ("\uff08\u6700\u5c0f\u5316\u6642\u3001\u30b5\u30a6\u30f3\u30c9\u306e\u518d\u751f\u3092\u4e2d\u65ad\u3055\u305b\u308b\u306b\u306f\u3001", "\uff08\u6700\u5c0f\u5316\u65f6\u5982\u8981\u4e2d\u65ad\u58f0\u97f3\u64ad\u653e\uff0c"),
    ("\u300e\u30b5\u30a6\u30f3\u30c9\u300f-\u300e\u30b9\u30c6\u30a3\u30c3\u30ad\u30fc\u30d5\u30a9\u30fc\u30ab\u30b9\u300f\u3092OFF\u306b\u3057\u3066\u304f\u3060\u3055\u3044\uff09", "\u8bf7\u5c06\u201c\u58f0\u97f3\u201d-\u201c\u7c98\u6ede\u7126\u70b9\u201d\u8bbe\u4e3aOFF\uff09"),
    ("\u8d77\u52d5\u6642\u306b\"info.txt\"\u3092\u4f5c\u6210\u3059\u308b", "\u542f\u52a8\u65f6\u521b\u5efa\"info.txt\""),
    ("\u30aa\u30ea\u30b8\u30ca\u30eb\u30ab\u30fc\u30bd\u30eb", "\u539f\u59cb\u5149\u6807"),
    ("\u30ab\u30fc\u30bd\u30eb", "\u5149\u6807"),
    ("Direct3DSound \u3092\u4f7f\u7528\u3059\u308b", "\u4f7f\u7528 Direct3DSound"),
    ("\u30b9\u30c6\u30a3\u30c3\u30ad\u30fc\u30d5\u30a9\u30fc\u30ab\u30b9\u3092\u6709\u52b9\u306b\u3059\u308b", "\u542f\u7528\u7c98\u6ede\u7126\u70b9"),
    ("\uff08\u30b9\u30c6\u30a3\u30c3\u30ad\u30fc\u30d5\u30a9\u30fc\u30ab\u30b9\u3092\u6709\u52b9\u306b\u3059\u308b\u3068\u3001", "\uff08\u542f\u7528\u7c98\u6ede\u7126\u70b9\u65f6\uff0c"),
    ("\u8907\u6570\u30b3\u30a2CPU\u306b\u5bfe\u5fdc\u3055\u305b\u308b", "\u652f\u6301\u591a\u6838\u5fc3CPU"),
    ("\u52b9\u679c\u97f3\u30fb\u30dc\u30a4\u30b9\u306e\u30d1\u30f3\u3092\u6709\u52b9\u306b\u3059\u308b", "\u542f\u7528\u97f3\u6548/\u8bed\u97f3\u58f0\u9053"),
    ("\u3053\u306e\u8a2d\u5b9a\u306f\u30b2\u30fc\u30e0\u306e\u518d\u8d77\u52d5\u304c\u5fc5\u8981\u3067\u3059\u3002", "\u6b64\u8bbe\u7f6e\u9700\u8981\u91cd\u542f\u6e38\u620f\u3002"),
    ("\u30bb\u30fc\u30d6\u30fb\u30ed\u30fc\u30c9\u753b\u9762\u3067\u30bb\u30fc\u30d6\u30c7\u30fc\u30bf\u306e\u30b5\u30e0\u30cd\u30a4\u30eb\u304c\u9ed2\u304f\u306a\u3063\u3066\u3057\u307e\u3046\u5bfe\u7b56", "\u4fee\u590d\u5b58\u8bfb\u6863\u7f29\u7565\u56fe\u53d8\u9ed1\u95ee\u9898"),
    ("Rage128 \u5bfe\u7b56 (Rage128\u30d3\u30c7\u30aa\u30ab\u30fc\u30c9\u3092\u4f7f\u7528\u3057\u3066\u308b\u5834\u5408\u306f\u30c1\u30a7\u30c3\u30af\u3057\u3066\u304f\u3060\u3055\u3044\uff09", "Rage128\u5bf9\u7b56\uff08\u4f7f\u7528Rage128\u663e\u5361\u65f6\u8bf7\u52fe\u9009\uff09"),
    ("Z \u30d0\u30c3\u30d5\u30a1\u3092\u4f7f\u7528\u3057\u306a\u3044", "\u4e0d\u4f7f\u7528Z\u7f13\u51b2"),
    ("\u30d5\u30a1\u30a4\u30eb\u5148\u8aad\u307f\u6a5f\u80fd\u3092\u7121\u52b9\u306b\u3059\u308b", "\u7981\u7528\u6587\u4ef6\u9884\u8bfb\u529f\u80fd"),
    ("\u30e0\u30fc\u30d3\u30fc\u518d\u751f\u3092\u884c\u308f\u306a\u3044", "\u4e0d\u64ad\u653e\u5f71\u7247"),
    ("\u30d4\u30af\u30bb\u30eb\u30b7\u30a7\u30fc\u30c0\u30fc\u3092\u4f7f\u7528\u3057\u306a\u3044", "\u4e0d\u4f7f\u7528\u50cf\u7d20\u7740\u8272\u5668"),
    ("Direct3D\u540c\u671f\u5f85\u3061\u3092\u884c\u3046", "\u7b49\u5f85Direct3D\u540c\u6b65"),
    ("\u30cf\u30fc\u30c9\u30a6\u30a7\u30a2TnL\u3092\u4f7f\u7528\u3059\u308b", "\u4f7f\u7528\u786c\u4ef6TnL"),
    ("\u30e9\u30a4\u30c8\u3092\u4f7f\u7528\u3059\u308b", "\u4f7f\u7528\u706f\u5149"),
    ("\u30d0\u30c3\u30af\u30d0\u30c3\u30d5\u30a1\u3092\u4f7f\u7528\u3059\u308b", "\u4f7f\u7528\u540e\u53f0\u7f13\u51b2"),
    ("\u30c6\u30af\u30b9\u30c1\u30e3\u89e3\u50cf\u5ea6\u304c 16bit \u306e\u6642\u3001\u30c7\u30a3\u30b6\u30ea\u30f3\u30b0\u88dc\u9593\u3092\u884c\u3046", "16bit\u7eb9\u7406\u65f6\u542f\u7528\u6296\u52a8\u8865\u95f4"),
    ("\u30c6\u30af\u30b9\u30c1\u30e3\u88dc\u9593(\u7e2e\u5c0f)", "\u7eb9\u7406\u8865\u95f4(\u7f29\u5c0f)"),
    ("\u30c6\u30af\u30b9\u30c1\u30e3\u88dc\u9593(\u62e1\u5927)", "\u7eb9\u7406\u8865\u95f4(\u653e\u5927)"),
    ("\u30c6\u30af\u30b9\u30c1\u30e3\u89e3\u50cf\u5ea6", "\u7eb9\u7406\u5206\u8fa8\u7387"),
    ("\u30c6\u30af\u30b9\u30c1\u30e3\u88dc\u9593", "\u7eb9\u7406\u8865\u95f4"),
    ("\u30c6\u30af\u30b9\u30c1\u30e3", "\u7eb9\u7406"),
    ("POINT \uff08\u4f4e\u8cea\uff09", "POINT \uff08\u4f4e\u8d28\uff09"),
    ("LINEAR \uff08\u6a19\u6e96\uff09", "LINEAR \uff08\u6807\u51c6\uff09"),
    ("ANISOTROPIC (\u4e0a\u8cea)", "ANISOTROPIC (\u9ad8\u8d28)"),
    ("POINT (\u4f4e\u8cea)", "POINT (\u4f4e\u8d28)"),
    ("LINEAR (\u6a19\u6e96)", "LINEAR (\u6807\u51c6)"),
    ("16 bit (\u30cf\u30a4\u30ab\u30e9\u30fc)", "16 bit (\u9ad8\u5f69)"),
    ("32 bit (\u30d5\u30eb\u30ab\u30e9\u30fc)", "32 bit (\u5168\u5f69)"),
    ("V-Sync\u5f85\u3061\u3092\u884c\u3046", "\u7b49\u5f85V-Sync"),
    ("\u30a2\u30f3\u30c1\u30a8\u30a4\u30ea\u30a2\u30b9\u51e6\u7406\u3092\u6709\u52b9\u306b\u3059\u308b", "\u542f\u7528\u6297\u952f\u9f7f\u5904\u7406"),
    ("\u30d5\u30a9\u30b0\u30bf\u30a4\u30d7", "\u96fe\u7c7b\u578b"),
    ("\u30d4\u30af\u30bb\u30eb\u30d5\u30a9\u30b0", "\u50cf\u7d20\u96fe"),
    ("\u9802\u70b9\u30d5\u30a9\u30b0", "\u9876\u70b9\u96fe"),
    ("\u30d5\u30a9\u30b0\u3092\u4f7f\u7528\u3057\u306a\u3044", "\u4e0d\u4f7f\u7528\u96fe"),
    ("\u30b5\u30a4\u30ba", "\u5927\u5c0f"),
    ("\u5727\u7e2e", "\u538b\u7f29"),
    ("\u6a19\u6e96\u306e\u4f4d\u7f6e", "\u9ed8\u8ba4\u4f4d\u7f6e"),
    ("\u753b\u9762\u306e\u4e0b\u9685", "\u753b\u9762\u4e0b\u65b9"),
    ("\u753b\u9762\u306e\u4e0a\u9685", "\u753b\u9762\u4e0a\u65b9"),
    ("\u30b2\u30fc\u30e0\u753b\u9762\u5916\u306e\u80cc\u666f", "\u6e38\u620f\u753b\u9762\u5916\u80cc\u666f"),
    ("\u30d1\u30bf\u30fc\u30f3\u306e\u58c1\u7d19", "\u56fe\u6848\u58c1\u7eb8"),
    ("\u30b5\u30a6\u30f3\u30c9\u30fb\u305d\u306e\u4ed6", "\u58f0\u97f3\u53ca\u5176\u4ed6"),

    # Longer help/description strings that were visibly mixed after earlier passes.
    ("\u524d\u56de\u30b2\u30fc\u30e0\u30d7\u30ec\u30a4\u3092\u7d42\u4e86\u3057\u305f\u6642\u306e\u8a2d\u5b9a\u3092\u4f7f\u7528\u3057\u307e\u3059\u3002", "\u4f7f\u7528\u4e0a\u6b21\u9000\u51fa\u6e38\u620f\u65f6\u7684\u8bbe\u7f6e\u3002"),
    ("\u30b2\u30fc\u30e0\u52d5\u4f5c\u30b9\u30d4\u30fc\u30c9\u3092 30fps \u306b\u3057\u307e\u3059\u3002", "\u6e38\u620f\u8fd0\u884c\u901f\u5ea6\u8bbe\u4e3a30fps\u3002"),
    ("\u30b2\u30fc\u30e0\u52d5\u4f5c\u30b9\u30d4\u30fc\u30c9\u3092 60fps \u306b\u3057\u307e\u3059\u3002", "\u6e38\u620f\u8fd0\u884c\u901f\u5ea6\u8bbe\u4e3a60fps\u3002"),
    ("\u30b2\u30fc\u30e0\u753b\u9762\u5916\u306e\u4f59\u308a\u90e8\u5206\u3092\u9ed2\u306b\u3057\u307e\u3059\u3002", "\u5c06\u6e38\u620f\u753b\u9762\u5916\u7684\u7a7a\u767d\u90e8\u5206\u8bbe\u4e3a\u9ed1\u8272\u3002"),
    ("\u30b2\u30fc\u30e0\u753b\u9762\u5916\u306e\u4f59\u308a\u90e8\u5206\u3092\u58c1\u7d19\u306b\u3057\u307e\u3059\u3002", "\u5c06\u6e38\u620f\u753b\u9762\u5916\u7684\u7a7a\u767d\u90e8\u5206\u8bbe\u4e3a\u58c1\u7eb8\u3002"),
]

# Byte-level strings in the ANSI resource/string table. In Chinese locale these
# must be GBK, not CP932.
BYTE_PATCHES = [
    ("\u9805\u76ee", "cp932", "\u9879\u76ee", "gbk"),
    ("\u5185\u5bb9", "cp932", "\u5185\u5bb9", "gbk"),
    ("\u5168\u3066\u306e\u30d5\u30a1\u30a4\u30eb(*.*)", "cp932", "\u6240\u6709\u6587\u4ef6(*.*)", "gbk"),
    ("\u30c6\u30ad\u30b9\u30c8\u30d5\u30a1\u30a4\u30eb(*.txt)", "cp932", "\u6587\u672c\u6587\u4ef6(*.txt)", "gbk"),
    ("\u74b0\u5883\u60c5\u5831\u306e\u4fdd\u5b58\u5148", "cp932", "\u73af\u5883\u4fe1\u606f\u4fdd\u5b58\u4f4d\u7f6e", "gbk"),
    ("\u8d77\u52d5\u6642\u306b\"%s\"\u3092\u4f5c\u6210\u3059\u308b", "cp932", "\u542f\u52a8\u65f6\u521b\u5efa\"%s\"", "gbk"),
    ("\u89e3\u50cf\u5ea6\u3092\u5909\u66f4\u3057\u306a\u3044", "cp932", "\u4e0d\u66f4\u6539\u5206\u8fa8\u7387", "gbk"),
    ("\u6a19\u6e96", "cp932", "\u6807\u51c6", "gbk"),
    ("\u5727\u7e2e\u3057\u306a\u3044", "cp932", "\u4e0d\u538b\u7f29", "gbk"),
    ("\u5727\u7e2e\u3059\u308b", "cp932", "\u538b\u7f29", "gbk"),
    ("\u7cfb\u7edf\u4fe1\u606f    \u3092 %s \u306b\u4fdd\u5b58\u3059\u308b", "mixed_gbk_cp932", "\u5c06\u7cfb\u7edf\u4fe1\u606f\u4fdd\u5b58\u5230 %s", "gbk"),
    ("\u30b7\u30b9\u30c6\u30e0\u60c5\u5831\u3092 %s \u306b\u4fdd\u5b58\u3059\u308b", "cp932", "\u5c06\u7cfb\u7edf\u4fe1\u606f\u4fdd\u5b58\u5230 %s", "gbk"),
    ("\u30b7\u30b9\u30c6\u30e0\u60c5\u5831", "cp932", "\u7cfb\u7edf\u4fe1\u606f", "gbk"),
    ("\u30b7\u30b9\u30c6\u30e0\u74b0\u5883\u8a2d\u5b9a", "cp932", "\u7cfb\u7edf\u73af\u5883\u8bbe\u7f6e", "gbk"),
]


def encode_old(text: str, enc: str) -> bytes:
    if enc == "mixed_gbk_cp932":
        # Current string after earlier passes: GBK Chinese prefix + CP932 suffix.
        prefix = "\u7cfb\u7edf\u4fe1\u606f    ".encode("gbk")
        suffix = "\u3092 %s \u306b\u4fdd\u5b58\u3059\u308b".encode("cp932")
        return prefix + suffix
    return text.encode(enc)


def pad_text(old_text: str, new_text: str) -> str:
    if len(new_text) > len(old_text):
        raise RuntimeError(f"replacement too long: {old_text!a} -> {new_text!a}")
    return new_text + (" " * (len(old_text) - len(new_text)))


def pad_bytes(old: bytes, new: bytes) -> bytes:
    if len(new) > len(old):
        raise RuntimeError(f"byte replacement too long: {old!r} -> {new!r}")
    return new + (b" " * (len(old) - len(new)))


def replace_all(data: bytearray, old: bytes, new: bytes) -> list[int]:
    if len(old) != len(new):
        raise RuntimeError("size mismatch")
    offsets = []
    start = 0
    while True:
        pos = data.find(old, start)
        if pos < 0:
            return offsets
        data[pos:pos + len(old)] = new
        offsets.append(pos)
        start = pos + len(new)


def main() -> None:
    if not TARGET.exists():
        raise FileNotFoundError(TARGET)

    data = bytearray(TARGET.read_bytes())
    rows = []

    for old_text, new_base in sorted(UTF16_PATCHES, key=lambda x: len(x[0]), reverse=True):
        new_text = pad_text(old_text, new_base)
        old = old_text.encode("utf-16le")
        new = new_text.encode("utf-16le")
        offsets = replace_all(data, old, new)
        rows.append({
            "encoding": "utf-16le",
            "old_text": old_text,
            "new_text": new_text,
            "hit_count": str(len(offsets)),
            "offsets": ",".join(f"0x{x:08X}" for x in offsets),
        })

    for old_text, old_enc, new_text, new_enc in sorted(BYTE_PATCHES, key=lambda x: len(encode_old(x[0], x[1])), reverse=True):
        old = encode_old(old_text, old_enc)
        new = pad_bytes(old, new_text.encode(new_enc))
        offsets = replace_all(data, old, new)
        rows.append({
            "encoding": f"{old_enc}->{new_enc}",
            "old_text": old_text,
            "new_text": new_text,
            "hit_count": str(len(offsets)),
            "offsets": ",".join(f"0x{x:08X}" for x in offsets),
        })

    TARGET.write_bytes(data)
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["encoding", "old_text", "new_text", "hit_count", "offsets"],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)

    print(f"patched {TARGET}")
    print(f"report={REPORT}")
    for row in rows:
        if row["hit_count"] != "0":
            print(f"{row['encoding']}\t{row['old_text']!a}\t{row['new_text']!a}\t{row['hit_count']}\t{row['offsets']}")


if __name__ == "__main__":
    main()
