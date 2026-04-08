from __future__ import annotations

import argparse
import json
import re
import shutil
import struct
import sys
import zlib
from pathlib import Path


BATTLE_ROOT = Path(__file__).resolve().parents[1]

GBK_REPLACEMENTS = {
    "\u30fb": "\u00b7",
    "\u266a": "\u222e",
}


class PatchError(Exception):
    pass


def normalize_for_gbk(text: str, report: list[str], context: str) -> str:
    original = text
    for src, dst in GBK_REPLACEMENTS.items():
        text = text.replace(src, dst)
    try:
        text.encode("gbk")
    except UnicodeEncodeError as exc:
        raise PatchError(f"{context}: cannot encode as GBK: {exc}; text={text!r}") from exc
    if text != original:
        report.append(f"{context}\t{original}\t{text}")
    return text


def script_escape(text: str) -> str:
    text = text.replace("\r\n", "\n").replace("\r", "\n")
    return text.replace("\n", r"\n")


def load_json(path: Path) -> list[dict[str, object]]:
    data = json.loads(path.read_text(encoding="utf-8-sig"))
    if not isinstance(data, list):
        raise PatchError(f"{path} is not a JSON list")
    for index, item in enumerate(data):
        if not isinstance(item, dict):
            raise PatchError(f"{path}: item {index} is not an object")
    return data


def read_qdb(path: Path) -> tuple[bytes, bytearray, list[dict[str, int]], int, int, int]:
    data = path.read_bytes()
    if len(data) < 12 or not data.startswith(b"KCDB"):
        raise PatchError(f"{path} is not a KCDB/QDB file")
    payload = bytearray(zlib.decompress(data[12:]))
    col_count = struct.unpack_from("<I", payload, 0)[0]
    offset = 4
    columns: list[dict[str, int]] = []
    for _ in range(col_count):
        name = payload[offset : offset + 16].split(b"\0", 1)[0].decode("ascii", errors="replace")
        type_id = struct.unpack_from("<I", payload, offset + 16)[0]
        size = struct.unpack_from("<I", payload, offset + 20)[0]
        columns.append({"name": name, "type": type_id, "size": size, "offset": 0})  # type: ignore[dict-item]
        offset += 24
    row_count = struct.unpack_from("<I", payload, offset)[0]
    row_size = struct.unpack_from("<I", payload, offset + 4)[0]
    data_offset = offset + 8

    col_offset = 0
    for column in columns:
        column["offset"] = col_offset
        col_offset += int(column["size"])
    if col_offset != row_size:
        raise PatchError(f"{path}: parsed column size {col_offset} != row size {row_size}")
    if data_offset + row_count * row_size > len(payload):
        raise PatchError(f"{path}: inconsistent row count/size")
    return data[:4], payload, columns, row_count, row_size, data_offset


def write_qdb(path: Path, magic: bytes, payload: bytes) -> None:
    compressed = zlib.compress(payload)
    header = magic + struct.pack("<II", len(compressed), len(payload))
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(header + compressed)


def patch_qdb_file(
    src_path: Path,
    json_path: Path,
    map_path: Path,
    out_path: Path,
    report: list[str],
) -> int:
    items = load_json(json_path)
    mappings = load_json(map_path)
    if len(items) != len(mappings):
        raise PatchError(f"{json_path}: item count {len(items)} != map count {len(mappings)}")

    magic, payload, columns, row_count, row_size, data_offset = read_qdb(src_path)
    columns_by_name = {str(column["name"]): column for column in columns}

    patched = 0
    for index, (item, mapping) in enumerate(zip(items, mappings)):
        if int(mapping["index"]) != index:
            raise PatchError(f"{map_path}: map index mismatch at {index}")
        row = int(mapping["_qdb_row"])
        column_name = str(mapping["_qdb_column"])
        field_size = int(mapping["_qdb_field_size"])
        if row < 0 or row >= row_count:
            raise PatchError(f"{map_path}: row out of range at index {index}: {row}")
        if column_name not in columns_by_name:
            raise PatchError(f"{map_path}: unknown column {column_name!r}")
        column = columns_by_name[column_name]
        if int(column["size"]) != field_size:
            raise PatchError(f"{map_path}: field size mismatch at index {index}")

        text = str(item.get("name", ""))
        text = normalize_for_gbk(text, report, f"{json_path.name}:{index}:{column_name}")
        encoded = text.encode("gbk")
        if len(encoded) >= field_size:
            raise PatchError(
                f"{json_path.name}:{index}:{column_name}: GBK length {len(encoded)} >= field size {field_size}; text={text!r}"
            )

        pos = data_offset + row * row_size + int(column["offset"])
        payload[pos : pos + field_size] = encoded + b"\0" * (field_size - len(encoded))
        patched += 1

    write_qdb(out_path, magic, bytes(payload))
    return patched


def split_line_ending(line: bytes) -> tuple[bytes, bytes]:
    if line.endswith(b"\r\n"):
        return line[:-2], b"\r\n"
    if line.endswith(b"\n"):
        return line[:-1], b"\n"
    if line.endswith(b"\r"):
        return line[:-1], b"\r"
    return line, b""


def make_strvar_line(var_id: int, text: str, ending: bytes, report: list[str], context: str) -> bytes:
    text = normalize_for_gbk(script_escape(text), report, context)
    return f"strvar {var_id} ".encode("ascii") + text.encode("gbk") + ending


def make_saveload_title_line(text: str, ending: bytes, report: list[str], context: str) -> bytes:
    text = normalize_for_gbk(script_escape(text), report, context)
    leading_spaces = len(text) - len(text.lstrip(" "))
    if leading_spaces:
        text = "\u3000" * leading_spaces + text[leading_spaces:]
    return b"strvar g_TMP_STR \\pc" + text.encode("gbk") + ending


def read_fes_payload(path: Path) -> tuple[bytes, bytes]:
    data = path.read_bytes()
    if len(data) < 16 or not data.startswith(b"FES\0"):
        raise PatchError(f"{path} is not a FES file")
    return data[:16], zlib.decompress(data[16:])


def write_fes(path: Path, old_header: bytes, payload: bytes) -> None:
    compressed = zlib.compress(payload)
    header = old_header[:4] + struct.pack("<II", len(compressed), len(payload)) + old_header[12:16]
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(header + compressed)


def make_card_suffix_pairs(card_qdb_path: Path) -> list[tuple[bytes, bytes]]:
    _, payload, columns, row_count, row_size, data_offset = read_qdb(card_qdb_path)
    column_by_name = {str(column["name"]): column for column in columns}
    wait_column = column_by_name["WAIT"]
    morale_column = column_by_name["MORALE"]
    pairs: dict[bytes, bytes] = {}
    for row in range(row_count):
        row_base = data_offset + row * row_size
        wait = struct.unpack_from("<I", payload, row_base + int(wait_column["offset"]))[0]
        morale = struct.unpack_from("<I", payload, row_base + int(morale_column["offset"]))[0]
        if not wait and not morale:
            continue

        if wait:
            old = f"\u3010\u5f85\u6a5f\u6642\u9593({wait})\u3011"
            new = f"\u3010\u7b49\u5f85\u65f6\u95f4({wait})\u3011"
        else:
            old = "\u3010\u5373\u6642\u3011"
            new = "\u3010\u5373\u65f6\u3011"
        if morale:
            old += f"\u3010\u58eb\u6c17({morale})\u3011"
            new += f"\u3010\u58eb\u6c14+{morale}\u3011"
        old_cp932 = old.encode("cp932")
        new_gbk = new.encode("gbk")
        pairs[old_cp932] = new_gbk
        pairs[b" " + old_cp932] = b" " + new_gbk
        pairs["\u3000".encode("cp932") + old_cp932] = "\u3000".encode("gbk") + new_gbk
    return sorted(pairs.items(), key=lambda item: (len(item[0]), item[0]))


def make_card_title_suffix_pairs(card_qdb_path: Path) -> list[tuple[bytes, bytes]]:
    _, payload, columns, row_count, row_size, data_offset = read_qdb(card_qdb_path)
    column_by_name = {str(column["name"]): column for column in columns}
    name_column = column_by_name["NAME"]
    wait_column = column_by_name["WAIT"]
    morale_column = column_by_name["MORALE"]
    pairs: dict[bytes, bytes] = {}
    for row in range(row_count):
        row_base = data_offset + row * row_size
        name_bytes = bytes(payload[
            row_base + int(name_column["offset"]) : row_base + int(name_column["offset"]) + int(name_column["size"])
        ].split(b"\0", 1)[0])
        wait = struct.unpack_from("<I", payload, row_base + int(wait_column["offset"]))[0]
        morale = struct.unpack_from("<I", payload, row_base + int(morale_column["offset"]))[0]
        if not name_bytes or (not wait and not morale):
            continue

        if wait:
            old = f"\u3010\u5f85\u6a5f\u6642\u9593({wait})\u3011"
            new = f"\u3010\u7b49\u5f85\u65f6\u95f4({wait})\u3011"
        else:
            old = "\u3010\u5373\u6642\u3011"
            new = "\u3010\u5373\u65f6\u3011"
        if morale:
            old += f"\u3010\u58eb\u6c17({morale})\u3011"
            new += f"\u3010\u58eb\u6c14+{morale}\u3011"

        old_suffix = old.encode("cp932")
        new_suffix = new.encode("gbk")
        for old_sep, new_sep in [(b"", b""), (b" ", b" "), ("\u3000".encode("cp932"), "\u3000".encode("gbk"))]:
            pairs[name_bytes + old_sep + old_suffix] = name_bytes + new_sep + new_suffix
    return sorted(pairs.items(), key=lambda item: (len(item[0]), item[0]))


def make_card_id_suffix_pairs(card_qdb_path: Path) -> list[tuple[int, bytes]]:
    _, payload, columns, row_count, row_size, data_offset = read_qdb(card_qdb_path)
    column_by_name = {str(column["name"]): column for column in columns}
    tbl_column = column_by_name["TBL"]
    wait_column = column_by_name["WAIT"]
    morale_column = column_by_name["MORALE"]
    pairs: dict[int, bytes] = {}
    for row in range(row_count):
        row_base = data_offset + row * row_size
        card_id = struct.unpack_from("<I", payload, row_base + int(tbl_column["offset"]))[0]
        wait = struct.unpack_from("<I", payload, row_base + int(wait_column["offset"]))[0]
        morale = struct.unpack_from("<I", payload, row_base + int(morale_column["offset"]))[0]
        if not wait and not morale:
            continue

        if wait:
            suffix = f"\u3010\u7b49\u5f85\u65f6\u95f4({wait})\u3011"
        else:
            suffix = "\u3010\u5373\u65f6\u3011"
        if morale:
            suffix += f"\u3010\u58eb\u6c14+{morale}\u3011"
        pairs[card_id] = suffix.encode("gbk")
    return sorted(pairs.items())


def make_card_id_title_pairs(card_qdb_path: Path) -> list[tuple[int, bytes]]:
    _, payload, columns, row_count, row_size, data_offset = read_qdb(card_qdb_path)
    column_by_name = {str(column["name"]): column for column in columns}
    tbl_column = column_by_name["TBL"]
    name_column = column_by_name["NAME"]
    wait_column = column_by_name["WAIT"]
    morale_column = column_by_name["MORALE"]
    pairs: dict[int, bytes] = {}
    for row in range(row_count):
        row_base = data_offset + row * row_size
        card_id = struct.unpack_from("<I", payload, row_base + int(tbl_column["offset"]))[0]
        name = bytes(payload[
            row_base + int(name_column["offset"]) : row_base + int(name_column["offset"]) + int(name_column["size"])
        ].split(b"\0", 1)[0])
        wait = struct.unpack_from("<I", payload, row_base + int(wait_column["offset"]))[0]
        morale = struct.unpack_from("<I", payload, row_base + int(morale_column["offset"]))[0]
        if not name:
            continue

        suffix = ""
        if wait:
            suffix = f"\u3010\u7b49\u5f85\u65f6\u95f4({wait})\u3011"
        elif morale:
            suffix = "\u3010\u5373\u65f6\u3011"
        if morale:
            suffix += f"\u3010\u58eb\u6c14+{morale}\u3011"
        pairs[card_id] = name + suffix.encode("gbk")
    return sorted(pairs.items())


def make_stage_title_pairs(stage_qdb_path: Path) -> list[tuple[int, bytes]]:
    _, payload, columns, row_count, row_size, data_offset = read_qdb(stage_qdb_path)
    column_by_name = {str(column["name"]): column for column in columns}
    tbl_column = column_by_name["TBL"]
    name_column = column_by_name["NAME"]
    pairs: dict[int, bytes] = {}
    for row in range(row_count):
        row_base = data_offset + row * row_size
        stage_id = struct.unpack_from("<I", payload, row_base + int(tbl_column["offset"]))[0]
        name = bytes(payload[
            row_base + int(name_column["offset"]) : row_base + int(name_column["offset"]) + int(name_column["size"])
        ].split(b"\0", 1)[0])
        if not name:
            continue
        pairs[stage_id] = name
    return sorted(pairs.items())


def make_card_suffix_block(target: bytes, suffix_pairs: list[tuple[bytes, bytes]]) -> bytes:
    block = bytearray()
    block += b"$852 = 0\r\n"
    for old, new in suffix_pairs:
        block += b"strcmp 850 $str12 " + old + b"\r\n"
        block += b"if ($850==0)\r\n"
        block += b"if ($852==0)\r\n"
        block += target + b" apend " + new + b"\r\n"
        block += b"$852 = 1\r\n"
        block += b"endif\r\n"
        block += b"endif\r\n"
    return bytes(block)


def make_card_title_suffix_block(target: bytes, title_pairs: list[tuple[bytes, bytes]]) -> bytes:
    block = bytearray()
    block += b"$852 = 0\r\n"
    for old, new in title_pairs:
        block += b"strvar 851 " + old + b"\r\n"
        block += b"strcmp 850 $str10 $str851\r\n"
        block += b"if ($850==0)\r\n"
        block += b"if ($852==0)\r\n"
        block += target + b" apend " + new + b"\r\n"
        block += b"$852 = 1\r\n"
        block += b"endif\r\n"
        block += b"endif\r\n"
    block += b"if ($852==0)\r\n"
    block += target + b" apend $str10\r\n"
    block += b"endif\r\n"
    return bytes(block)


def make_card_id_suffix_block(target: bytes, id_expr: bytes, id_pairs: list[tuple[int, bytes]]) -> bytes:
    block = bytearray()
    for card_id, suffix in id_pairs:
        block += b"if (" + id_expr + b"==" + str(card_id).encode("ascii") + b")\r\n"
        block += target + b" apend " + suffix + b"\r\n"
        block += b"endif\r\n"
    return bytes(block)


def make_card_id_title_block(target: bytes, id_expr: bytes, id_title_pairs: list[tuple[int, bytes]]) -> bytes:
    block = bytearray()
    block += b"\\58 = 0\r\n"
    for card_id, title in id_title_pairs:
        block += b"if (" + id_expr + b"==" + str(card_id).encode("ascii") + b")\r\n"
        block += target + b" apend " + title + b"\r\n"
        block += b"\\58 = 1\r\n"
        block += b"endif\r\n"
    block += b"if (\\58==0)\r\n"
    block += b"send BTLMAIN_GET_CARDNAME 0 \\60\r\n"
    block += target + b" apend $str10\r\n"
    block += b"endif\r\n"
    return bytes(block)


def make_stage_title_block(stage_id_expr: bytes, stage_pairs: list[tuple[int, bytes]]) -> bytes:
    block = bytearray()
    for stage_id, title in stage_pairs:
        # Stage id 0 is also a valid battle, but normal non-battle saves often leave
        # sl_BATTLE_NO at 0. Avoid using it as a fallback until we can prove the save
        # is actually a battle save.
        if stage_id == 0:
            continue
        block += b"if (" + stage_id_expr + b"==" + str(stage_id).encode("ascii") + b")\r\n"
        block += b"strvar g_TMP_STR \\pc" + title + b"\r\n"
        block += b"endif\r\n"
    return bytes(block)


def make_battle_scene_title_block(scene_id_expr: bytes, stage_pairs: list[tuple[int, bytes]]) -> bytes:
    block = bytearray()
    seen_scene_ids: set[int] = set()
    for stage_id, title in stage_pairs:
        if 0 <= stage_id <= 23:
            scene_id = 80001 + stage_id
        elif 1000 <= stage_id <= 1023:
            scene_id = 80001 + (stage_id - 1000)
        else:
            continue
        if scene_id in seen_scene_ids:
            continue
        seen_scene_ids.add(scene_id)
        block += b"if (" + scene_id_expr + b"==" + str(scene_id).encode("ascii") + b")\r\n"
        block += b"strvar g_TMP_STR \\pc" + title + b"\r\n"
        block += b"endif\r\n"

    # Some early saves may store the first battle with the zero-based id.
    first_title = next((title for stage_id, title in stage_pairs if stage_id == 0), None)
    if first_title is not None and 80000 not in seen_scene_ids:
        block += b"if (" + scene_id_expr + b"==80000)\r\n"
        block += b"strvar g_TMP_STR \\pc" + first_title + b"\r\n"
        block += b"endif\r\n"
    return bytes(block)


def translate_chapter_select_titles(payload: bytes) -> tuple[bytes, int]:
    replacements = {
        "第一章　拠点選択": "第一章　据点选择",
        "第二章　拠点選択": "第二章　据点选择",
        "第三章　拠点選択": "第三章　据点选择",
        "第四章　拠点選択": "第四章　据点选择",
        "第五章　拠点選択": "第五章　据点选择",
        "第六章　拠点選択": "第六章　据点选择",
        "第七章　拠点選択": "第七章　据点选择",
        "第八章　拠点選択": "第八章　据点选择",
        "第九章　拠点選択": "第九章　据点选择",
        "第十章　拠点選択": "第十章　据点选择",
        "第十一章　拠点選択": "第十一章　据点选择",
        "第十二章　拠点選択": "第十二章　据点选择",
        "第十三章　拠点選択": "第十三章　据点选择",
        "第十四章　拠点選択": "第十四章　据点选择",
        "第十五章　拠点選択": "第十五章　据点选择",
        "第十六章　拠点選択": "第十六章　据点选择",
        "第十七章　拠点選択": "第十七章　据点选择",
        "第十八章　拠点選択": "第十八章　据点选择",
    }
    count = 0
    for old_text, new_text in replacements.items():
        old = old_text.encode("cp932")
        new = new_text.encode("gbk")
        old_count = payload.count(old)
        if old_count:
            payload = payload.replace(old, new)
            count += old_count
    return payload, count


def make_saveload_message_fix_block() -> bytes:
    return (
        b"strcmp 850 $str850 " + "[\u9078\u629e\u80a2]".encode("cp932") + b"\r\n"
        b"if ($850==0)\r\n"
        b"strvar g_TMP_STR " + "[\u9009\u62e9\u9879]".encode("gbk") + b"\r\n"
        b"endif\r\n"
    )


def patch_battle_ui_fes_file(
    src_path: Path,
    out_path: Path,
    suffix_pairs: list[tuple[bytes, bytes]],
    title_pairs: list[tuple[bytes, bytes]],
    id_pairs: list[tuple[int, bytes]],
    id_title_pairs: list[tuple[int, bytes]],
) -> int:
    old_header, payload = read_fes_payload(src_path)
    replacements = 0

    if src_path.name == "battle_main_interface.fes":
        old = (
            b"send BTLMAIN_GET_CARDNAME 0 \\60\r\n"
            b"name clear\r\n"
            b"name apend $str10\r\n"
            b"name draw -1\r\n"
            b"name disp 1\r\n"
            b"send BTLMAIN_GET_CARDTEXT2 0 \\60\r\n"
            b"text clear\r\n"
            b"text apend $str10"
        )
        new = (
            b"if (\\60==10000)\r\n"
            b"\\0 = \\350\r\n"
            b"else\r\n"
            b"\\0 = \\(300+\\60*10)\r\n"
            b"endif\r\n"
            b"\\59 = \\0\r\n"
            b"name clear\r\n"
            + make_card_id_title_block(b"name", b"\\59", id_title_pairs) +
            b"name draw -1\r\n"
            b"name disp 1\r\n"
            b"send BTLMAIN_GET_CARDTEXT2 0 \\60\r\n"
            b"text clear\r\n"
            b"text apend $str10"
        )
        if old not in payload:
            raise PatchError(f"{src_path.name}: card text block not found")
        payload = payload.replace(old, new, 1)
        replacements += 1

        static_replacements = {
            "\u9663\u5f62\u3092\u300e\u75be\u69cd\u9663\u300f\u306b\u5909\u66f4\u3057\u307e\u3059\u3002\\n\u69cd\u653b\u6483(\u5168Lv)\u306e\u5f85\u6a5f\u6642\u9593\u304c\u5c11\u3057\u7e2e\u5c0f\u3055\u308c\u307e\u3059\u3002": "\u9635\u5f62\u53d8\u66f4\u4e3a\u201c\u75be\u67aa\u9635\u201d\u3002\\n\u67aa\u653b\u51fb(\u5168Lv)\u7684\u7b49\u5f85\u65f6\u95f4\u7565\u5fae\u7f29\u77ed\u3002",
            "\u9663\u5f62\u3092\u300e\u9583\u5f13\u9663\u300f\u306b\u5909\u66f4\u3057\u307e\u3059\u3002\\n\u5f13\u653b\u6483(\u5168Lv)\u306e\u5f85\u6a5f\u6642\u9593\u304c\u5c11\u3057\u7e2e\u5c0f\u3055\u308c\u307e\u3059\u3002": "\u9635\u5f62\u53d8\u66f4\u4e3a\u201c\u95ea\u5f13\u9635\u201d\u3002\\n\u5f13\u653b\u51fb(\u5168Lv)\u7684\u7b49\u5f85\u65f6\u95f4\u7565\u5fae\u7f29\u77ed\u3002",
            "\u9663\u5f62\u3092\u300e\u77ac\u9a0e\u9663\u300f\u306b\u5909\u66f4\u3057\u307e\u3059\u3002\\n\u9a0e\u653b\u6483(\u5168Lv)\u306e\u5f85\u6a5f\u6642\u9593\u304c\u5c11\u3057\u7e2e\u5c0f\u3055\u308c\u307e\u3059\u3002": "\u9635\u5f62\u53d8\u66f4\u4e3a\u201c\u77ac\u9a91\u9635\u201d\u3002\\n\u9a91\u653b\u51fb(\u5168Lv)\u7684\u7b49\u5f85\u65f6\u95f4\u7565\u5fae\u7f29\u77ed\u3002",
            "\u9663\u5f62\u3092\u300e\u52b1\u8d77\u9663\u300f\u306b\u5909\u66f4\u3057\u307e\u3059\u3002\\n\u58eb\u6c17\u306e\u5897\u3048\u308b\u901f\u5ea6\u304c\u5c11\u3057\u65e9\u304f\u306a\u308a\u307e\u3059\u3002": "\u9635\u5f62\u53d8\u66f4\u4e3a\u201c\u52b1\u8d77\u9635\u201d\u3002\\n\u58eb\u6c14\u589e\u52a0\u901f\u5ea6\u7565\u5fae\u52a0\u5feb\u3002",
            "\u9663\u5f62\u3092\u300e\u6bbb\u9632\u9663\u300f\u306b\u5909\u66f4\u3057\u307e\u3059\u3002\\n\u9632\u5fa1\u529b\u304c\u4e0a\u304c\u308a\u3001\u653b\u6483\u529b\u304c\u5c11\u3057\u4e0b\u304c\u308a\u307e\u3059\u3002": "\u9635\u5f62\u53d8\u66f4\u4e3a\u201c\u6bbb\u9632\u9635\u201d\u3002\\n\u9632\u5fa1\u529b\u4e0a\u5347\uff0c\u653b\u51fb\u529b\u7565\u5fae\u4e0b\u964d\u3002",
            "\u9663\u5f62\u3092\u300e\u5f37\u653b\u9663\u300f\u306b\u5909\u66f4\u3057\u307e\u3059\u3002\\n\u653b\u6483\u529b\u304c\u4e0a\u304c\u308a\u3001\u9632\u5fa1\u529b\u304c\u5c11\u3057\u4e0b\u304c\u308a\u307e\u3059\u3002": "\u9635\u5f62\u53d8\u66f4\u4e3a\u201c\u5f3a\u653b\u9635\u201d\u3002\\n\u653b\u51fb\u529b\u4e0a\u5347\uff0c\u9632\u5fa1\u529b\u7565\u5fae\u4e0b\u964d\u3002",
            "\u884c\u52d5\u4fdd\u6301": "\u884c\u52a8\u4fdd\u6301",
            "\u884c\u52d5\u3092\u4e00\u3064\u4fdd\u6301\u3057\u307e\u3059\u3002": "\u4fdd\u7559\u4e00\u4e2a\u884c\u52a8\u3002",
            "\u4fdd\u6301\u3057\u3066\u3044\u308b\u884c\u52d5\u3092\u7834\u68c4\u3057\u307e\u3059\u3002": "\u4e22\u5f03\u4fdd\u7559\u4e2d\u7684\u884c\u52a8\u3002",
            "\u58eb\u6c17\u5411\u4e0a \u3010\u5f85\u6a5f\u6642\u9593(10)\u3011": "\u58eb\u6c14\u63d0\u5347 \u3010\u7b49\u5f85\u65f6\u95f4(10)\u3011",
            "\u58eb\u6c17\u3092\u4e00\u3064\u5897\u3084\u3057\u307e\u3059\u3002": "\u58eb\u6c14\u589e\u52a0\u4e00\u70b9\u3002",
            "\u81ea\u52d5\u30dc\u30bf\u30f3\u30fb\u8a08\u7565\u4e0d\u4f7f\u7528": "\u81ea\u52a8\u6309\u94ae\u00b7\u4e0d\u4f7f\u7528\u8ba1\u7565",
            "\u81ea\u52d5\u3067\u884c\u52d5\u3092\u9078\u629e\u3057\u307e\u3059\u3002\\n\u9078\u629e\u3067\u304d\u308b\u884c\u52d5\u304c\u7121\u3044\u5834\u5408\u306f\u58eb\u6c17\u5411\u4e0a\u304c\u9078\u629e\u3055\u308c\u307e\u3059\u3002\\n\u58eb\u6c17\u3092\u6d88\u8cbb\u3059\u308b\u884c\u52d5\u306f\u9078\u629e\u3055\u308c\u307e\u305b\u3093\u3002": "\u81ea\u52a8\u9009\u62e9\u884c\u52a8\u3002\\n\u6ca1\u6709\u53ef\u9009\u884c\u52a8\u65f6\u4f1a\u9009\u62e9\u58eb\u6c14\u63d0\u5347\u3002\\n\u4e0d\u4f1a\u9009\u62e9\u6d88\u8017\u58eb\u6c14\u7684\u884c\u52a8\u3002",
            "\u81ea\u52d5\u30dc\u30bf\u30f3\u30fb\u8a08\u7565\u4f7f\u7528": "\u81ea\u52a8\u6309\u94ae\u00b7\u4f7f\u7528\u8ba1\u7565",
            "\u81ea\u52d5\u3067\u884c\u52d5\u3092\u9078\u629e\u3057\u307e\u3059\u3002\\n\u9078\u629e\u3067\u304d\u308b\u884c\u52d5\u304c\u7121\u3044\u5834\u5408\u306f\u58eb\u6c17\u5411\u4e0a\u304c\u9078\u629e\u3055\u308c\u307e\u3059\u3002": "\u81ea\u52a8\u9009\u62e9\u884c\u52a8\u3002\\n\u6ca1\u6709\u53ef\u9009\u884c\u52a8\u65f6\u4f1a\u9009\u62e9\u58eb\u6c14\u63d0\u5347\u3002",
        }
        for old_s, new_s in static_replacements.items():
            old_b = old_s.encode("cp932")
            if old_b in payload:
                payload = payload.replace(old_b, new_s.encode("gbk"))
                replacements += 1

    elif src_path.name == "battle_setup.fes":
        def replace_setup_suffix(match: re.Match[bytes]) -> bytes:
            target = b"card_title[" + match.group(1) + b"]"
            id_expr = b"\\" + str(10 + int(match.group(1))).encode("ascii")
            return make_card_id_suffix_block(target, id_expr, id_pairs)

        payload, replacements = re.subn(rb"card_title\[(\d+)\] apend \$str12\r?\n", replace_setup_suffix, payload)

    elif src_path.name == "battle_setup_ind.fes":
        payload, replacements = re.subn(
            rb"skillTitle apend \$str12\r?\n",
            make_card_id_suffix_block(b"skillTitle", b"\\0", id_pairs),
            payload,
        )

    if replacements == 0:
        raise PatchError(f"{src_path.name}: no battle UI replacements applied")

    write_fes(out_path, old_header, payload)
    return replacements


def patch_config_text_fes_file(src_path: Path, out_path: Path) -> int:
    old_header, payload = read_fes_payload(src_path)
    replacements = 0
    sample_replacements = {
        "\u30e1\u30c3\u30bb\u30fc\u30b8\u901f\u5ea6\u30b5\u30f3\u30d7\u30eb\u3067\u3059\u3002": "\u6d88\u606f\u901f\u5ea6\u793a\u4f8b\u6587\u672c\u3002",
        "\u30aa\u30fc\u30c8\u30e2\u30fc\u30c9\u901f\u5ea6\u30b5\u30f3\u30d7\u30eb\u3067\u3059\u3002": "\u81ea\u52a8\u6a21\u5f0f\u901f\u5ea6\u793a\u4f8b\u6587\u672c\u3002",
    }
    for old_text, new_text in sample_replacements.items():
        old = old_text.encode("cp932")
        new = new_text.encode("gbk")
        count = payload.count(old)
        if count == 0:
            raise PatchError(f"{src_path.name}: sample text not found: {old_text}")
        payload = payload.replace(old, new)
        replacements += count

    write_fes(out_path, old_header, payload)
    return replacements


def patch_fes_file(src_path: Path, json_path: Path, out_path: Path, report: list[str]) -> int:
    items = load_json(json_path)
    old_header, payload = read_fes_payload(src_path)
    lines = payload.splitlines(keepends=True)
    decoded_lines = [split_line_ending(line)[0].decode("cp932", errors="replace").strip() for line in lines]

    current_name_line = {20: None, 21: None}
    current_message_line = {20: None, 21: None}
    groups: list[tuple[int | None, int, int, int]] = []

    for line_index, text in enumerate(decoded_lines):
        match = re.match(r"^strvar\s+(\d+)\s+(.*)$", text)
        if match:
            var_id = int(match.group(1))
            if var_id == 22:
                current_name_line[20] = line_index
            elif var_id == 23:
                current_name_line[21] = line_index
            elif var_id in (20, 21):
                current_message_line[var_id] = line_index
            continue
        if text == "call DISPTEXT_P":
            msg_line = current_message_line[20]
            if msg_line is not None:
                groups.append((current_name_line[20], msg_line, 22, 20))
        elif text == "call DISPTEXT_E":
            msg_line = current_message_line[21]
            if msg_line is not None:
                groups.append((current_name_line[21], msg_line, 23, 21))

    if len(groups) != len(items):
        raise PatchError(f"{json_path.name}: dialogue count {len(items)} != FES groups {len(groups)}")

    for index, (item, group) in enumerate(zip(items, groups)):
        name_line, message_line, name_var, message_var = group
        if "name" in item and name_line is not None:
            _, ending = split_line_ending(lines[name_line])
            lines[name_line] = make_strvar_line(
                name_var, str(item["name"]), ending, report, f"{json_path.name}:{index}:name"
            )
        if "message" not in item:
            raise PatchError(f"{json_path.name}: item {index} has no message")
        _, ending = split_line_ending(lines[message_line])
        lines[message_line] = make_strvar_line(
            message_var, str(item["message"]), ending, report, f"{json_path.name}:{index}:message"
        )

    write_fes(out_path, old_header, b"".join(lines))
    return len(items)


def patch_saveload_fes_file(
    src_path: Path,
    json_path: Path,
    map_path: Path,
    out_path: Path,
    report: list[str],
    stage_pairs: list[tuple[int, bytes]],
) -> int:
    items = load_json(json_path)
    mappings = load_json(map_path)
    if len(items) != len(mappings):
        raise PatchError(f"{json_path}: item count {len(items)} != map count {len(mappings)}")

    old_header, payload = read_fes_payload(src_path)
    lines = payload.splitlines(keepends=True)
    patched = 0
    for index, (item, mapping) in enumerate(zip(items, mappings)):
        if int(mapping["index"]) != index:
            raise PatchError(f"{map_path}: map index mismatch at {index}")
        line_index = int(mapping["line_index"])
        if line_index < 0 or line_index >= len(lines):
            raise PatchError(f"{map_path}: line index out of range at {index}: {line_index}")

        body, ending = split_line_ending(lines[line_index])
        if not body.startswith(b"strvar g_TMP_STR \\pc"):
            raise PatchError(f"{map_path}: target line {line_index} is not a saveload title line")
        source = str(mapping["source"])
        if source.encode("cp932") not in body:
            raise PatchError(f"{map_path}: source mismatch at index {index}: {source!r}")

        text = str(item.get("name", ""))
        lines[line_index] = make_saveload_title_line(text, ending, report, f"{json_path.name}:{index}:saveload")
        patched += 1

    payload = b"".join(lines)
    payload, chapter_select_count = translate_chapter_select_titles(payload)

    stage_block = make_battle_scene_title_block(b"$g_TMP", stage_pairs) if stage_pairs else b""
    if stage_block:
        stage_block_anchor = b"title apend $str850\r\n"
        if stage_block_anchor not in payload:
            stage_block_anchor = b"title apend $str850\n"
        if stage_block_anchor not in payload:
            raise PatchError(f"{src_path.name}: title append anchor not found")
        # Official saveload.fes already contains the 80001..80024 battle title block.
        # Only insert a generated block when the source file does not already have it.
        if b"if ($g_TMP==80001)" not in payload:
            payload = payload.replace(stage_block_anchor, stage_block + stage_block_anchor, 1)

    message_anchor = b"saveget_str \\0 0x200 g_TMP_STR\r\n"
    if message_anchor not in payload:
        message_anchor = b"saveget_str \\0 0x200 g_TMP_STR\n"
    if message_anchor not in payload:
        raise PatchError(f"{src_path.name}: saveload message anchor not found")
    message_fix_block = make_saveload_message_fix_block()
    if message_fix_block not in payload:
        payload = payload.replace(message_anchor, message_anchor + message_fix_block, 1)
    report.append(f"{json_path.name}:chapter_select_titles\t{chapter_select_count}\ttranslated")
    report.append(f"{json_path.name}:battle_scene_titles\t{len(stage_pairs)}\tchecked")
    report.append(f"{json_path.name}:message_choice_fix\t1\tinserted")

    write_fes(out_path, old_header, payload)
    return patched


def safe_rmtree(path: Path, allowed_parent: Path) -> None:
    if not path.exists():
        return
    resolved = path.resolve()
    allowed = allowed_parent.resolve()
    if resolved == allowed or allowed not in resolved.parents:
        raise PatchError(f"Refusing to remove outside {allowed}: {resolved}")
    shutil.rmtree(resolved)


def main() -> None:
    parser = argparse.ArgumentParser(description="Build GARbro-ready battle patch files from translated battle JSON files.")
    parser.add_argument("--root", type=Path, default=BATTLE_ROOT, help="Battle work directory.")
    parser.add_argument("--result-dir", type=Path, default=None, help="Directory that will receive patched .qdb/.fes files.")
    args = parser.parse_args()

    root = args.root.resolve()
    battle_root = root
    translation_root = battle_root / "battle_export"
    import_root = battle_root / "battle_Import"
    translated_dialogue = import_root / "dialog_transl"
    translated_qdb = import_root / "no_dialog_transl"
    translated_saveload = import_root / "save_chapter_transl"
    qdb_map_root = translation_root / "maps" / "no_dialog"
    saveload_map_root = translation_root / "maps" / "save_chapter"
    src_qdb_root = battle_root / "qdb"
    src_fes_root = battle_root / "fes"
    result_root = (args.result_dir.resolve() if args.result_dir else battle_root / "battle_reasult")
    report_root = import_root / "reports"

    if not translated_qdb.exists():
        raise PatchError(f"Missing translated QDB dir: {translated_qdb}")
    if not translated_saveload.exists():
        raise PatchError(f"Missing translated saveload dir: {translated_saveload}")
    if not src_qdb_root.exists():
        raise PatchError(f"Missing source QDB dir: {src_qdb_root}")
    if not src_fes_root.exists():
        raise PatchError(f"Missing source FES dir: {src_fes_root}")
    dialogue_jsons = sorted(translated_dialogue.glob("*.json"))
    qdb_jsons = sorted(translated_qdb.glob("*.json"))
    saveload_json = translated_saveload / "saveload.json"
    saveload_map = saveload_map_root / "saveload.map.json"
    has_saveload_job = saveload_map.exists()
    if qdb_map_root.exists() and not qdb_jsons:
        raise PatchError(f"No translated QDB JSON found in: {translated_qdb}")
    if has_saveload_job and not saveload_json.exists():
        raise PatchError(f"Missing translated saveload JSON: {saveload_json}")
    if not dialogue_jsons and not qdb_jsons and not has_saveload_job:
        raise PatchError("No import jobs found. Put translated JSON files into battle_Import first.")

    safe_rmtree(result_root, root)
    result_root.mkdir(parents=True, exist_ok=True)
    report_root.mkdir(parents=True, exist_ok=True)

    replacements_report: list[str] = []
    summary: list[str] = []

    qdb_total = 0
    for json_path in qdb_jsons:
        qdb_name = json_path.stem + ".qdb"
        map_path = qdb_map_root / (json_path.stem + ".map.json")
        src_path = src_qdb_root / qdb_name
        out_path = result_root / qdb_name
        if not map_path.exists():
            raise PatchError(f"Missing QDB map: {map_path}")
        if not src_path.exists():
            raise PatchError(f"Missing source QDB: {src_path}")
        count = patch_qdb_file(src_path, json_path, map_path, out_path, replacements_report)
        qdb_total += count
        summary.append(f"QDB\t{qdb_name}\t{count}")

    card_for_suffix = result_root / "card.qdb"
    if not card_for_suffix.exists():
        card_for_suffix = src_qdb_root / "card.qdb"
    suffix_pairs = make_card_suffix_pairs(card_for_suffix)
    title_pairs = make_card_title_suffix_pairs(card_for_suffix)
    id_pairs = make_card_id_suffix_pairs(card_for_suffix)
    id_title_pairs = make_card_id_title_pairs(card_for_suffix)
    stage_for_title = result_root / "stage.qdb"
    if not stage_for_title.exists():
        stage_for_title = src_qdb_root / "stage.qdb"
    stage_pairs = make_stage_title_pairs(stage_for_title) if stage_for_title.exists() else []
    summary.append(f"FES_UI_SUFFIX\tcard_suffix_pairs\t{len(suffix_pairs)}")
    summary.append(f"FES_UI_SUFFIX\tcard_title_suffix_pairs\t{len(title_pairs)}")
    summary.append(f"FES_UI_SUFFIX\tcard_id_suffix_pairs\t{len(id_pairs)}")
    summary.append(f"FES_UI_SUFFIX\tcard_id_title_pairs\t{len(id_title_pairs)}")
    summary.append(f"FES_SAVELOAD_STAGE\tstage_title_pairs\t{len(stage_pairs)}")

    fes_total = 0
    for json_path in dialogue_jsons:
        fes_name = json_path.stem + ".fes"
        src_path = src_fes_root / fes_name
        out_path = result_root / fes_name
        if not src_path.exists():
            raise PatchError(f"Missing source FES: {src_path}")
        count = patch_fes_file(src_path, json_path, out_path, replacements_report)
        fes_total += count
        summary.append(f"FES\t{fes_name}\t{count}")

    ui_total = 0
    for fes_name in ["battle_main_interface.fes", "battle_setup.fes", "battle_setup_ind.fes"]:
        src_path = src_fes_root / fes_name
        out_path = result_root / fes_name
        if not src_path.exists():
            continue
        count = patch_battle_ui_fes_file(src_path, out_path, suffix_pairs, title_pairs, id_pairs, id_title_pairs)
        ui_total += count
        summary.append(f"FES_UI\t{fes_name}\t{count}")

    config_text_src = src_fes_root / "config_text.fes"
    config_text_out = result_root / "config_text.fes"
    if config_text_src.exists():
        config_count = patch_config_text_fes_file(config_text_src, config_text_out)
        ui_total += config_count
        summary.append(f"FES_UI\tconfig_text.fes\t{config_count}")

    saveload_total = 0
    src_path = src_fes_root / "saveload.fes"
    out_path = result_root / "saveload.fes"
    if has_saveload_job:
        if not src_path.exists():
            raise PatchError(f"Missing source FES: {src_path}")
        saveload_total = patch_saveload_fes_file(
            src_path, saveload_json, saveload_map, out_path, replacements_report, stage_pairs
        )
        summary.append(f"FES_SAVELOAD\tsaveload.fes\t{saveload_total}")

    (report_root / "qf_summary.tsv").write_text("type\tfile\tcount\n" + "\n".join(summary) + "\n", encoding="utf-8")
    (report_root / "gbk_normalizations.tsv").write_text(
        "context\tbefore\tafter\n" + "\n".join(replacements_report) + ("\n" if replacements_report else ""),
        encoding="utf-8",
    )

    print(f"QDB entries patched: {qdb_total}")
    print(f"FES dialogue entries patched: {fes_total}")
    print(f"FES UI replacements: {ui_total}")
    print(f"FES saveload title entries patched: {saveload_total}")
    print(f"Card suffix mappings: {len(suffix_pairs)}")
    print(f"Card title suffix mappings: {len(title_pairs)}")
    print(f"Card ID suffix mappings: {len(id_pairs)}")
    print(f"Card ID title mappings: {len(id_title_pairs)}")
    print(f"GBK normalizations: {len(replacements_report)}")
    print(f"GARbro-ready files: {result_root}")
    print(f"Report: {report_root}")


if __name__ == "__main__":
    try:
        main()
    except PatchError as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        sys.exit(1)
