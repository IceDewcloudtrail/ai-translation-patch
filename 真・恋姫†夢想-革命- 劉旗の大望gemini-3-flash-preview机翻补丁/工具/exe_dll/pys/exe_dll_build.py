from __future__ import annotations

import argparse
import hashlib
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SCRIPT_DIR = Path(__file__).resolve().parent
OUT_DIR = ROOT / "exedll_reasult"
WORK_ROOT = OUT_DIR / "_build_work"
WORK_SCRIPTS = WORK_ROOT / "gpt_out"

DEFAULT_EXE_NAME = "ryuki_mt.exe"
DEFAULT_DLL_NAME = "cs2kumo.dll"
DEFAULT_DEBUG_EXE_NAME = "debug.exe"

# These byte ranges are the complete difference from the clean ryuki.exe to the
# ryuki_cn.exe baseline used by the translation patches.
BASELINE_PATCHES = [
    (0x00124CA3, "75", "EB"),
    (0x0024EDF3, "9F", "FE"),
    (0x0024EDFB, "EF", "FE"),
    (0x0024EE06, "7E", "FE"),
    (0x0024EE0E, "FC", "FE"),
    (0x0025051C, "80", "86"),
    (
        0x004CD203,
        "8A C2 8B AB 90 DD 92 E8 82 C9 93 E0 95 94 83 47 83 89 81 5B 82 AA 94 AD 90 B6 82 B5 82 DC 82 B5 82 BD 81 42 8A C2 8B AB 90 DD 92 E8 82 F0 8F 49 97 B9 82 B5 82 DC 82 B7 81 42",
        "BB B7 BE B3 C9 E8 D6 C3 B7 A2 C9 FA C4 DA B2 BF B4 ED CE F3 A1 A3 BB B7 BE B3 C9 E8 D6 C3 BD AB BB E1 D6 D5 D6 B9 A1 A3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00",
    ),
    (
        0x004E50DF,
        "91 BD 8F 64 8B 4E 93 AE 82 CC 82 BD 82 DF 81 41 83 76 83 8D 83 4F 83 89 83 80 82 F0 8F 49 97 B9 82 B5 82 DC 82 B7 81 42",
        "CE AA C1 CB D6 D8 D0 C2 C6 F4 B6 AF A3 AC B3 CC D0 F2 BD AB BB E1 D6 D5 D6 B9 A1 A3 00 00 00 00 00 00 00 00 00 00 00 00",
    ),
    (
        0x004E538A,
        "82 F0 8F 49 97 B9 82 B5 82 C4 82 E6 82 EB 82 B5 82 A2 82 C5 82 B7 82 A9 81 48",
        "D5 E6 B5 C4 D2 AA CD CB B3 F6 D3 CE CF B7 C2 F0 A3 BF 00 00 00 00 00 00 00 00",
    ),
    (0x004E53B3, "8F 49 97 B9", "BD E1 CA F8"),
]

# Existing safe scripts, run in a temporary copied workspace. Do not add
# patch_cs2conf_force_gbk_acp.py or patch_embedded_env_info_ascii.py here.
PIPELINE = [
    "patch_ryuki_cn.py",
    "patch_remaining_cp932.py",
    "add_japanese_locale_guard.py",
    "patch_screen_mode_dialog.py",
    "patch_menu_ui.py",
    "patch_more_ui.py",
    "patch_more_ui_pass2.py",
    "patch_cs2conf_zh_env.py",
    "patch_cs2conf_0500_tail.py",
    "patch_cs2conf_0500_ascii_fallback.py",
    "patch_embedded_env_info_ascii_safe_inplace.py",
    "patch_game_title_value_cs2.py",
    "patch_font_enum_charset.py",
    "make_nooverwrite_dll_build.py",
]


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Build the patched Chinese CS2 executable from clean ryuki.exe and cs2conf.dll. "
            "Default output: exedll_reasult\\ryuki_mt.exe and exedll_reasult\\cs2kumo.dll."
        )
    )
    parser.add_argument(
        "--custom",
        action="store_true",
        help="prompt for output exe/dll file names",
    )
    parser.add_argument(
        "--exe-name",
        default=None,
        help=f"output exe file name, default {DEFAULT_EXE_NAME}",
    )
    parser.add_argument(
        "--dll-name",
        default=None,
        help=f"output dll file name, default {DEFAULT_DLL_NAME}; max 11 ASCII bytes",
    )
    parser.add_argument(
        "--keep-work",
        action="store_true",
        help="keep exedll_reasult\\_build_work for debugging",
    )
    parser.add_argument(
        "--debug",
        action="store_true",
        help=f"also write a no-locale-guard exe as exedll_reasult\\{DEFAULT_DEBUG_EXE_NAME}",
    )
    return parser.parse_args()


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest().upper()


def hex_bytes(text: str) -> bytes:
    return bytes.fromhex(text)


def clean_name(name: str, suffix: str) -> str:
    name = name.strip().strip("\"'")
    if not name:
        raise ValueError("empty file name")
    if any(ch in name for ch in "\\/:*?\"<>|"):
        raise ValueError(f"file name contains an invalid path character: {name}")
    if not name.lower().endswith(suffix):
        name += suffix
    return name


def choose_names(args: argparse.Namespace) -> tuple[str, str]:
    exe_name = args.exe_name or DEFAULT_EXE_NAME
    dll_name = args.dll_name or DEFAULT_DLL_NAME

    if args.custom:
        typed = input(f"Output exe name [{exe_name}]: ").strip()
        if typed:
            exe_name = typed
        typed = input(f"Output dll name [{dll_name}] (max 11 ASCII bytes): ").strip()
        if typed:
            dll_name = typed

    exe_name = clean_name(exe_name, ".exe")
    dll_name = clean_name(dll_name, ".dll")
    dll_bytes = dll_name.encode("ascii")
    if len(dll_bytes) > len(DEFAULT_DLL_NAME):
        raise ValueError(
            f"dll name is too long for in-place import patch: {dll_name!r}; "
            f"max {len(DEFAULT_DLL_NAME)} ASCII bytes"
        )
    return exe_name, dll_name


def apply_baseline_patch(src: Path, dst: Path) -> None:
    data = bytearray(src.read_bytes())
    rows = []
    for offset, old_hex, new_hex in BASELINE_PATCHES:
        old = hex_bytes(old_hex)
        new = hex_bytes(new_hex)
        if len(old) != len(new):
            raise RuntimeError(f"baseline patch length mismatch at 0x{offset:08X}")
        got = bytes(data[offset : offset + len(old)])
        if got != old:
            raise RuntimeError(
                f"{src} does not look like the expected clean ryuki.exe at 0x{offset:08X}: "
                f"expected {old.hex(' ').upper()}, got {got.hex(' ').upper()}"
            )
        data[offset : offset + len(old)] = new
        rows.append((offset, len(old)))

    dst.write_bytes(data)
    print(f"wrote baseline {dst} sha256={sha256(dst)}")
    report = WORK_SCRIPTS / "reports" / "clean_ryuki_to_cn_baseline.tsv"
    report.parent.mkdir(parents=True, exist_ok=True)
    with report.open("w", encoding="utf-8", newline="") as f:
        f.write("offset\tlength\n")
        for offset, length in rows:
            f.write(f"0x{offset:08X}\t{length}\n")


def copy_scripts() -> None:
    WORK_SCRIPTS.mkdir(parents=True, exist_ok=True)
    for name in PIPELINE:
        src = SCRIPT_DIR / name
        if not src.exists():
            raise FileNotFoundError(src)
        shutil.copy2(src, WORK_SCRIPTS / name)


def patch_final_dll_name(path: Path, old_name: str, new_name: str) -> None:
    if old_name == new_name:
        return
    old = old_name.encode("ascii")
    new = new_name.encode("ascii")
    if len(new) > len(old):
        raise ValueError(f"dll name too long: {new_name}")

    data = bytearray(path.read_bytes())
    count = data.count(old)
    if count != 1:
        raise RuntimeError(f"{path} expected exactly one {old_name}, found {count}")
    pos = data.find(old)
    replacement = new + b"\x00" + b"\x00" * (len(old) - len(new) - 1) if len(new) < len(old) else new
    data[pos : pos + len(old)] = replacement
    path.write_bytes(data)
    print(f"patched dll name in {path.name}: {old_name} -> {new_name} at 0x{pos:08X}")


def run_pipeline() -> None:
    for name in PIPELINE:
        script = WORK_SCRIPTS / name
        print(f"\n=== running {name} ===", flush=True)
        subprocess.run([sys.executable, str(script)], cwd=str(WORK_ROOT), check=True)


def main() -> None:
    args = parse_args()
    exe_name, dll_name = choose_names(args)

    clean_exe = ROOT / "ryuki.exe"
    clean_dll = ROOT / "cs2conf.dll"
    if not clean_exe.exists():
        raise FileNotFoundError(clean_exe)
    if not clean_dll.exists():
        raise FileNotFoundError(clean_dll)

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    if WORK_ROOT.exists():
        shutil.rmtree(WORK_ROOT)
    WORK_ROOT.mkdir(parents=True)

    copy_scripts()
    shutil.copy2(clean_exe, WORK_ROOT / "ryuki.exe")
    shutil.copy2(clean_dll, WORK_ROOT / "cs2conf.dll")
    apply_baseline_patch(WORK_ROOT / "ryuki.exe", WORK_ROOT / "ryuki_cn.exe")

    run_pipeline()

    produced_exe = WORK_SCRIPTS / "ryuki_cn_gpt_only_ui_nodlloverwrite.exe"
    produced_debug_exe = WORK_SCRIPTS / "ryuki_cn_gpt_ui_nodlloverwrite.exe"
    produced_dll = WORK_SCRIPTS / DEFAULT_DLL_NAME
    if not produced_exe.exists():
        raise FileNotFoundError(produced_exe)
    if args.debug and not produced_debug_exe.exists():
        raise FileNotFoundError(produced_debug_exe)
    if not produced_dll.exists():
        raise FileNotFoundError(produced_dll)

    final_exe = OUT_DIR / exe_name
    final_dll = OUT_DIR / dll_name
    final_debug_exe = OUT_DIR / DEFAULT_DEBUG_EXE_NAME
    if args.debug and final_exe == final_debug_exe:
        raise ValueError(f"{DEFAULT_DEBUG_EXE_NAME} is reserved for --debug output")

    shutil.copy2(produced_exe, final_exe)
    shutil.copy2(produced_dll, final_dll)
    if args.debug:
        shutil.copy2(produced_debug_exe, final_debug_exe)

    patch_final_dll_name(final_exe, DEFAULT_DLL_NAME, dll_name)
    if args.debug:
        patch_final_dll_name(final_debug_exe, DEFAULT_DLL_NAME, dll_name)
    patch_final_dll_name(final_dll, DEFAULT_DLL_NAME, dll_name)

    print("\nDone.")
    print(f"EXE: {final_exe} sha256={sha256(final_exe)}")
    if args.debug:
        print(f"DEBUG EXE: {final_debug_exe} sha256={sha256(final_debug_exe)}")
    print(f"DLL: {final_dll} sha256={sha256(final_dll)}")
    if not args.keep_work:
        shutil.rmtree(WORK_ROOT)


if __name__ == "__main__":
    main()
