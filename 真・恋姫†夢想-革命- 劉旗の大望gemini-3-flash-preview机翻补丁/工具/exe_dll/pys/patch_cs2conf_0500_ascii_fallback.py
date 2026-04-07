from pathlib import Path
import csv
import hashlib
import sys

try:
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
except Exception:
    pass

ROOT = Path(__file__).resolve().parent.parent
TARGET = ROOT / "gpt_out" / "cs2conf.dll"
REPORT = ROOT / "gpt_out" / "reports" / "cs2conf_0500_ascii_fallback.tsv"

# The system-info list control displays these ANSI payloads through a western
# codepage path on some setups, so GBK bytes become mojibake like "ÏîÄ¿".
# Keep this fallback limited to the list's field labels; other UI strings that
# already render Chinese correctly are intentionally left alone.
PATCHES = {
    "$0500-0002$": "Item",
    "$0500-0003$": "Data",
    "$0500-0019$": "Game Title",
    "$0500-0020$": "Game Version",
    "$0500-0022$": "System Version",
    "$0500-0023$": "PC Maker",
    "$0500-0024$": "PC Model",
    "$0500-0026$": "CPU Maker",
    "$0500-0027$": "CPU Clock",
    "$0500-0029$": "Memory",
    "$0500-0031$": "GPU",
    "$0500-0032$": "GPU Driver",
    "$0500-0033$": "Resolution",
    "$0500-0035$": "Color",
    "$0500-0036$": "32bit Full",
    "$0500-0037$": "24bit Full",
    "$0500-0038$": "16bit High",
    "$0500-0039$": "8bit Indexed",
    "$0500-0040$": "DirectX Version",
}


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest().upper()


def patch_payload(data: bytearray, tag_text: str, replacement: str) -> dict[str, str]:
    tag = tag_text.encode("ascii")
    pos = data.find(tag)
    if pos < 0:
        raise RuntimeError(f"tag not found: {tag_text}")

    payload_start = pos + len(tag)
    end = data.find(b"\x00", payload_start)
    if end < 0:
        raise RuntimeError(f"terminator not found after {tag_text}")

    old_payload = bytes(data[payload_start:end])
    new_payload = replacement.encode("ascii")
    if len(new_payload) > len(old_payload):
        raise RuntimeError(
            f"{tag_text} replacement too long: {len(new_payload)} > {len(old_payload)}"
        )

    padded = new_payload + b" " * (len(old_payload) - len(new_payload))
    data[payload_start:end] = padded

    return {
        "tag": tag_text,
        "offset": f"0x{pos:08X}",
        "payload_length": str(len(old_payload)),
        "old_payload_hex": old_payload.hex(" ").upper(),
        "old_payload_gbk": old_payload.decode("gbk", errors="replace"),
        "old_payload_cp1252": old_payload.decode("cp1252", errors="replace"),
        "new_payload_ascii": padded.decode("ascii"),
        "new_payload_hex": padded.hex(" ").upper(),
    }


def main() -> None:
    REPORT.parent.mkdir(parents=True, exist_ok=True)
    if not TARGET.exists():
        raise FileNotFoundError(TARGET)

    data = bytearray(TARGET.read_bytes())
    before = sha256(TARGET)
    rows = [patch_payload(data, tag, text) for tag, text in PATCHES.items()]
    TARGET.write_bytes(data)
    after = sha256(TARGET)

    with REPORT.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=[
                "tag",
                "offset",
                "payload_length",
                "old_payload_hex",
                "old_payload_gbk",
                "old_payload_cp1252",
                "new_payload_ascii",
                "new_payload_hex",
            ],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)

    print(f"patched {TARGET}")
    print(f"sha256_before={before}")
    print(f"sha256_after ={after}")
    print(f"report={REPORT}")


if __name__ == "__main__":
    main()
