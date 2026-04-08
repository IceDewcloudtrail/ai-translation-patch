from __future__ import annotations

import argparse
import csv
import json
import re
import struct
import zlib
from pathlib import Path


BATTLE_ROOT = Path(__file__).resolve().parents[1]

JAPANESE_RE = re.compile(r"[\u3040-\u30ff\u3400-\u9fff\u3005\u30fc]")

QDB_FILES = [
    "card.qdb",
    "eventskilltext.qdb",
    "enemycard_0.qdb",
    "enemycard_1.qdb",
    "enemycard_2.qdb",
    "busyo.qdb",
    "stage.qdb",
]


def has_japanese(text: str) -> bool:
    return bool(JAPANESE_RE.search(text))


def read_qdb_payload(path: Path) -> bytes:
    data = path.read_bytes()
    if not data.startswith(b"KCDB"):
        raise ValueError(f"{path} is not a KCDB/QDB file")
    return zlib.decompress(data[12:])


def parse_qdb(path: Path) -> list[dict[str, object]]:
    data = read_qdb_payload(path)
    if len(data) < 8:
        raise ValueError(f"{path} is too short after decompression")

    col_count = struct.unpack_from("<I", data, 0)[0]
    offset = 4
    columns: list[dict[str, object]] = []
    for _ in range(col_count):
        raw_name = data[offset : offset + 16]
        name = raw_name.split(b"\0", 1)[0].decode("ascii", errors="replace")
        type_id = struct.unpack_from("<I", data, offset + 16)[0]
        size = struct.unpack_from("<I", data, offset + 20)[0]
        columns.append({"name": name, "type": type_id, "size": size})
        offset += 24

    row_count = struct.unpack_from("<I", data, offset)[0]
    row_size = struct.unpack_from("<I", data, offset + 4)[0]
    offset += 8
    expected_size = offset + row_count * row_size
    if expected_size > len(data):
        raise ValueError(f"{path} has inconsistent row count/size")

    rows: list[dict[str, object]] = []
    for row_index in range(row_count):
        row_base = offset + row_index * row_size
        col_offset = row_base
        for col in columns:
            name = str(col["name"])
            type_id = int(col["type"])
            size = int(col["size"])
            raw = data[col_offset : col_offset + size]
            if type_id == 2:
                text_bytes = raw.split(b"\0", 1)[0]
                if text_bytes:
                    text = text_bytes.decode("cp932", errors="replace")
                    if has_japanese(text):
                        rows.append(
                            {
                                "file": path.name,
                                "row": row_index,
                                "column": name,
                                "field_size": size,
                                "source": text,
                                "translation": "",
                            }
                        )
            col_offset += size
    return rows


def read_fes_script(path: Path) -> str:
    data = path.read_bytes()
    if not data.startswith(b"FES\0"):
        raise ValueError(f"{path} is not a FES file")
    payload = zlib.decompress(data[16:])
    return payload.decode("cp932", errors="replace")


def unescape_script_text(text: str) -> str:
    return text.replace("\\n", "\n")


def parse_fes_dialogue(path: Path) -> list[dict[str, str]]:
    script = read_fes_script(path)
    name_p = ""
    name_e = ""
    pending_messages: dict[int, str] = {}
    items: list[dict[str, str]] = []

    for line in script.splitlines():
        line = line.strip()
        match = re.match(r"^strvar\s+(\d+)\s+(.*)$", line)
        if match:
            var_id = int(match.group(1))
            value = unescape_script_text(match.group(2))
            if var_id == 22:
                name_p = value
            elif var_id == 23:
                name_e = value
            elif var_id in (20, 21):
                pending_messages[var_id] = value
            continue

        if line == "call DISPTEXT_P":
            message = pending_messages.pop(20, "")
            if message:
                item = {"message": message}
                if name_p:
                    item = {"name": name_p, "message": message}
                items.append(item)
        elif line == "call DISPTEXT_E":
            message = pending_messages.pop(21, "")
            if message:
                item = {"message": message}
                if name_e:
                    item = {"name": name_e, "message": message}
                items.append(item)

    return items


def write_json(path: Path, items: list[dict[str, str]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(items, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def write_tsv(path: Path, rows: list[dict[str, object]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="") as file:
        writer = csv.DictWriter(
            file,
            fieldnames=["file", "row", "column", "field_size", "source", "translation"],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)


def write_unique_qdb_tsv(path: Path, rows: list[dict[str, object]]) -> None:
    unique: dict[str, dict[str, object]] = {}
    for row in rows:
        source = str(row["source"])
        item = unique.setdefault(
            source,
            {
                "source": source,
                "translation": "",
                "count": 0,
                "first_location": f"{row['file']}:{row['row']}:{row['column']}",
                "locations": [],
            },
        )
        item["count"] = int(item["count"]) + 1
        locations = item["locations"]
        if isinstance(locations, list) and len(locations) < 12:
            locations.append(f"{row['file']}:{row['row']}:{row['column']}")

    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="") as file:
        writer = csv.DictWriter(
            file,
            fieldnames=["source", "translation", "count", "first_location", "locations"],
            delimiter="\t",
        )
        writer.writeheader()
        for item in sorted(unique.values(), key=lambda value: str(value["source"])):
            locations = item["locations"]
            if isinstance(locations, list):
                item = dict(item)
                item["locations"] = "; ".join(locations)
            writer.writerow(item)


def write_qdb_jsons(json_root: Path, map_root: Path, rows: list[dict[str, object]]) -> None:
    json_root.mkdir(parents=True, exist_ok=True)

    rows_by_file: dict[str, list[dict[str, object]]] = {}
    maps_by_file: dict[str, list[dict[str, object]]] = {}
    for row in rows:
        file_name = str(row["file"])
        rows_by_file.setdefault(file_name, []).append({"name": str(row["source"]), "message": ""})
        maps_by_file.setdefault(file_name, []).append(
            {
                "index": len(rows_by_file[file_name]) - 1,
                "source": str(row["source"]),
                "qdb_file": file_name,
                "_qdb_row": int(row["row"]),
                "_qdb_column": str(row["column"]),
                "_qdb_field_size": int(row["field_size"]),
            }
        )

    for file_name, items in sorted(rows_by_file.items()):
        out_path = json_root / (Path(file_name).stem + ".json")
        write_json(out_path, items)

    map_root.mkdir(parents=True, exist_ok=True)
    for file_name, items in sorted(maps_by_file.items()):
        out_path = map_root / (Path(file_name).stem + ".map.json")
        out_path.write_text(json.dumps(items, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def parse_saveload_titles(path: Path) -> list[dict[str, object]]:
    data = path.read_bytes()
    if not data.startswith(b"FES\0"):
        raise ValueError(f"{path} is not a FES file")
    payload = zlib.decompress(data[16:])
    lines = payload.splitlines(keepends=True)

    rows: list[dict[str, object]] = []
    current_g_tmp: int | None = None
    for line_index, raw_line in enumerate(lines):
        body = raw_line.rstrip(b"\r\n")
        text = body.decode("cp932", errors="replace")
        match = re.match(r"^if \(\$g_TMP==(-?\d+)\)$", text)
        if match:
            current_g_tmp = int(match.group(1))
            continue

        match = re.match(r"^strvar\s+g_TMP_STR\s+\\pc(.+)$", text)
        if match and current_g_tmp is not None:
            title = match.group(1)
            rows.append(
                {
                    "index": len(rows),
                    "g_tmp": current_g_tmp,
                    "line_index": line_index,
                    "source": title,
                }
            )
            current_g_tmp = None

    return rows


def write_saveload_jsons(json_root: Path, map_root: Path, rows: list[dict[str, object]]) -> None:
    json_items = [{"name": str(row["source"]), "message": ""} for row in rows]
    write_json(json_root / "saveload.json", json_items)
    map_root.mkdir(parents=True, exist_ok=True)
    (map_root / "saveload.map.json").write_text(
        json.dumps(rows, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )


def export(root: Path) -> None:
    battle_root = root
    fes_root = battle_root / "fes"
    qdb_root = battle_root / "qdb"
    out_root = battle_root / "battle_export"
    import_root = battle_root / "battle_Import"

    if not qdb_root.exists():
        raise FileNotFoundError(f"Missing source QDB directory: {qdb_root}")
    if not fes_root.exists():
        raise FileNotFoundError(f"Missing source FES directory: {fes_root}")

    translated_roots = [
        import_root / "dialog_transl",
        import_root / "no_dialog_transl",
        import_root / "save_chapter_transl",
    ]
    for translated_root in translated_roots:
        translated_root.mkdir(parents=True, exist_ok=True)

    dialogue_root = out_root / "dialog"
    non_dialogue_root = out_root / "no_dialog"
    saveload_root = out_root / "save_chapter"
    qdb_map_root = out_root / "maps" / "no_dialog"
    saveload_map_root = out_root / "maps" / "save_chapter"
    report_root = out_root / "reports"

    dialogue_manifest: list[dict[str, object]] = []
    for fes_path in sorted(fes_root.glob("battle_main_event_*.fes")):
        items = parse_fes_dialogue(fes_path)
        if not items:
            continue
        out_path = dialogue_root / (fes_path.stem + ".json")
        write_json(out_path, items)
        dialogue_manifest.append(
            {
                "source_file": fes_path.name,
                "json_file": out_path.relative_to(out_root).as_posix(),
                "count": len(items),
            }
        )

    qdb_rows: list[dict[str, object]] = []
    for file_name in QDB_FILES:
        qdb_path = qdb_root / file_name
        if qdb_path.exists():
            qdb_rows.extend(parse_qdb(qdb_path))
    if not qdb_rows:
        raise FileNotFoundError(f"No supported QDB text found in: {qdb_root}")

    write_tsv(report_root / "qdb_texts.tsv", qdb_rows)
    write_unique_qdb_tsv(report_root / "qdb_texts_unique.tsv", qdb_rows)
    write_qdb_jsons(non_dialogue_root, qdb_map_root, qdb_rows)

    saveload_rows: list[dict[str, object]] = []
    saveload_path = fes_root / "saveload.fes"
    if saveload_path.exists():
        saveload_rows = parse_saveload_titles(saveload_path)
        write_saveload_jsons(saveload_root, saveload_map_root, saveload_rows)

    report_root.mkdir(parents=True, exist_ok=True)
    with (report_root / "dialogue_manifest.tsv").open("w", encoding="utf-8", newline="") as file:
        writer = csv.DictWriter(file, fieldnames=["source_file", "json_file", "count"], delimiter="\t")
        writer.writeheader()
        writer.writerows(dialogue_manifest)

    print(f"dialogue files: {len(dialogue_manifest)}")
    print(f"dialogue entries: {sum(int(row['count']) for row in dialogue_manifest)}")
    print(f"qdb entries: {len(qdb_rows)}")
    print(f"saveload title entries: {len(saveload_rows)}")
    print(f"output: {out_root}")
    print(f"translated json dirs: {', '.join(str(path) for path in translated_roots)}")


def main() -> None:
    parser = argparse.ArgumentParser(description="Export battle dialogue JSON and QDB text table.")
    parser.add_argument("--root", type=Path, default=BATTLE_ROOT, help="Battle work directory.")
    args = parser.parse_args()
    export(args.root.resolve())


if __name__ == "__main__":
    main()
