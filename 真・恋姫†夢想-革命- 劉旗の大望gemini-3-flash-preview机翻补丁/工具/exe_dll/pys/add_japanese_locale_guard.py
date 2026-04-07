from pathlib import Path
import shutil
import struct

ROOT = Path(__file__).resolve().parent.parent
OUT_DIR = ROOT / "gpt_out"
BACKUP_DIR = OUT_DIR / "backup"

SRC = OUT_DIR / "ryuki_cn_gpt.exe"
DST = OUT_DIR / "ryuki_cn_gpt_only.exe"
BACKUP = BACKUP_DIR / "ryuki_cn_gpt_before_locale_guard.exe"

# The executable already imports these APIs, so the guard can call the IAT directly.
IAT_GET_USER_DEFAULT_LCID_RVA = 0x4091C4
IAT_GET_ACP_RVA = 0x4092CC
IAT_EXIT_PROCESS_RVA = 0x409338
IAT_LOAD_LIBRARY_A_RVA = 0x40912C
IAT_GET_PROC_ADDRESS_RVA = 0x409130

# .text has 0xCC padding here. This keeps the patch simple and avoids adding a section.
CODE_CAVE_RVA = 0x0F5C00
CODE_CAVE_FILE_OFFSET = 0x0F5000

USER32_DLL = b"user32.dll\x00"
MESSAGE_BOX_W_NAME = b"MessageBoxW\x00"
ERROR_TITLE_W = "Ryuki CN".encode("utf-16le") + b"\x00\x00"
ERROR_MESSAGE_W = "请在中文环境下运行此补丁".encode("utf-16le") + b"\x00\x00"


def u32(value: int) -> bytes:
    return struct.pack("<I", value)


def rel32(src_va_after_instruction: int, dst_va: int) -> bytes:
    return struct.pack("<i", dst_va - src_va_after_instruction)


def main() -> None:
    BACKUP_DIR.mkdir(exist_ok=True)
    if not BACKUP.exists():
        shutil.copy2(SRC, BACKUP)

    data = bytearray(SRC.read_bytes())
    pe = struct.unpack_from("<I", data, 0x3C)[0]
    image_base = struct.unpack_from("<I", data, pe + 24 + 28)[0]
    entry_rva = struct.unpack_from("<I", data, pe + 24 + 16)[0]

    # Map the entry RVA to file offset by reading the section table.
    section_count = struct.unpack_from("<H", data, pe + 6)[0]
    optional_header_size = struct.unpack_from("<H", data, pe + 20)[0]
    section_table = pe + 24 + optional_header_size
    entry_file_offset = None
    for index in range(section_count):
        section = section_table + index * 40
        virtual_size, virtual_address, raw_size, raw_ptr = struct.unpack_from("<IIII", data, section + 8)
        span = max(virtual_size, raw_size)
        if virtual_address <= entry_rva < virtual_address + span:
            entry_file_offset = raw_ptr + (entry_rva - virtual_address)
            break

    if entry_file_offset is None:
        raise RuntimeError("Could not map entry point RVA to file offset")

    entry_va = image_base + entry_rva
    cave_va = image_base + CODE_CAVE_RVA
    original_first_5 = bytes(data[entry_file_offset:entry_file_offset + 5])
    expected_first_5 = bytes.fromhex("e8 77 b8 00 00")
    if original_first_5 != expected_first_5:
        raise RuntimeError(
            f"Unexpected entry bytes: expected {expected_first_5.hex(' ')}, got {original_first_5.hex(' ')}"
        )

    if any(byte != 0xCC for byte in data[CODE_CAVE_FILE_OFFSET:CODE_CAVE_FILE_OFFSET + 0x180]):
        raise RuntimeError("Code cave is not clean 0xCC padding")

    get_user_default_lcid_va = image_base + IAT_GET_USER_DEFAULT_LCID_RVA
    get_acp_va = image_base + IAT_GET_ACP_RVA
    exit_process_va = image_base + IAT_EXIT_PROCESS_RVA
    load_library_a_va = image_base + IAT_LOAD_LIBRARY_A_RVA
    get_proc_address_va = image_base + IAT_GET_PROC_ADDRESS_RVA

    code = bytearray()

    # call dword ptr [GetUserDefaultLCID]
    code += b"\xFF\x15" + u32(get_user_default_lcid_va)
    # and eax, 0x3ff ; PRIMARYLANGID(LANGIDFROMLCID(lcid))
    code += b"\x25\xFF\x03\x00\x00"
    # cmp eax, LANG_JAPANESE (0x11)
    code += b"\x83\xF8\x11"
    # je deny
    je_lcid_pos = len(code)
    code += b"\x74\x00"

    # call dword ptr [GetACP]
    code += b"\xFF\x15" + u32(get_acp_va)
    # cmp eax, 932
    code += b"\x3D\xA4\x03\x00\x00"
    # je deny
    je_acp_pos = len(code)
    code += b"\x74\x00"

    # Re-run the original first instruction from the entrypoint while preserving
    # the exact return address that the original CALL would have pushed.
    #
    # original: call entry+5+0xB877
    # guard:    push entry+5
    #           jmp  entry+5+0xB877
    original_call_target_va = entry_va + 5 + 0xB877
    code += b"\x68" + u32(entry_va + 5)
    jump_to_original_call_site_va = cave_va + len(code)
    code += b"\xE9" + rel32(jump_to_original_call_site_va + 5, original_call_target_va)

    deny_offset = len(code)
    # Resolve and call MessageBoxW dynamically so the warning text is Unicode
    # and does not depend on the current ANSI code page.
    user32_offset_placeholder = len(code)
    # push user32.dll
    code += b"\x68" + b"\x00\x00\x00\x00"
    # call dword ptr [LoadLibraryA]
    code += b"\xFF\x15" + u32(load_library_a_va)
    message_box_w_name_offset_placeholder = len(code)
    # push MessageBoxW
    code += b"\x68" + b"\x00\x00\x00\x00"
    # push hModule
    code += b"\x50"
    # call dword ptr [GetProcAddress]
    code += b"\xFF\x15" + u32(get_proc_address_va)
    # test eax, eax
    code += b"\x85\xC0"
    # jz exit
    jz_message_box_w_pos = len(code)
    code += b"\x74\x00"

    # push MB_ICONERROR
    code += b"\x6A\x10"
    title_w_offset_placeholder = len(code)
    # push title
    code += b"\x68" + b"\x00\x00\x00\x00"
    message_w_offset_placeholder = len(code)
    # push message
    code += b"\x68" + b"\x00\x00\x00\x00"
    # push NULL hWnd
    code += b"\x6A\x00"
    # call MessageBoxW
    code += b"\xFF\xD0"

    exit_offset = len(code)
    code[jz_message_box_w_pos + 1] = exit_offset - (jz_message_box_w_pos + 2)

    # push 1
    code += b"\x6A\x01"
    # call dword ptr [ExitProcess]
    code += b"\xFF\x15" + u32(exit_process_va)
    code += b"\xCC"

    # Short conditional jump targets.
    code[je_lcid_pos + 1] = deny_offset - (je_lcid_pos + 2)
    code[je_acp_pos + 1] = deny_offset - (je_acp_pos + 2)

    user32_rva = CODE_CAVE_RVA + len(code)
    user32_va = image_base + user32_rva
    code += USER32_DLL

    message_box_w_name_rva = CODE_CAVE_RVA + len(code)
    message_box_w_name_va = image_base + message_box_w_name_rva
    code += MESSAGE_BOX_W_NAME

    title_w_rva = CODE_CAVE_RVA + len(code)
    title_w_va = image_base + title_w_rva
    code += ERROR_TITLE_W

    message_w_rva = CODE_CAVE_RVA + len(code)
    message_w_va = image_base + message_w_rva
    code += ERROR_MESSAGE_W

    code[user32_offset_placeholder + 1:user32_offset_placeholder + 5] = u32(user32_va)
    code[message_box_w_name_offset_placeholder + 1:message_box_w_name_offset_placeholder + 5] = u32(message_box_w_name_va)
    code[title_w_offset_placeholder + 1:title_w_offset_placeholder + 5] = u32(title_w_va)
    code[message_w_offset_placeholder + 1:message_w_offset_placeholder + 5] = u32(message_w_va)

    if len(code) > 0x180:
        raise RuntimeError(f"Guard is too large for reserved cave check: {len(code)} bytes")

    # Patch the entrypoint to jump to the guard.
    entry_patch = b"\xE9" + rel32(entry_va + 5, cave_va)
    data[entry_file_offset:entry_file_offset + 5] = entry_patch
    data[CODE_CAVE_FILE_OFFSET:CODE_CAVE_FILE_OFFSET + len(code)] = code

    DST.write_bytes(data)

    print(f"created={DST}")
    print(f"backup={BACKUP}")
    print(f"entry_rva=0x{entry_rva:08X}")
    print(f"entry_file_offset=0x{entry_file_offset:08X}")
    print(f"code_cave_rva=0x{CODE_CAVE_RVA:08X}")
    print(f"code_cave_file_offset=0x{CODE_CAVE_FILE_OFFSET:08X}")
    print(f"guard_size={len(code)}")
    print(f"entry_patch={entry_patch.hex(' ')}")


if __name__ == "__main__":
    main()
