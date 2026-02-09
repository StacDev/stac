#!/usr/bin/env python3
"""Scaffold custom widget model and parser files from templates."""

from __future__ import annotations

import argparse
from pathlib import Path
import re
import sys


def to_snake_case(name: str) -> str:
    return re.sub(r"(?<!^)(?=[A-Z])", "_", name).lower()


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Scaffold custom Stac widget files.")
    parser.add_argument("--name", required=True, help="PascalCase class name.")
    parser.add_argument("--type", required=True, help="Stac widget type identifier.")
    parser.add_argument("--out-dir", required=True, help="Output directory.")
    parser.add_argument("--force", action="store_true", help="Overwrite existing files.")
    return parser.parse_args()


def render(template: str, mapping: dict[str, str]) -> str:
    content = template
    for key, value in mapping.items():
        content = content.replace(key, value)
    return content


def write_file(path: Path, content: str, force: bool) -> None:
    if path.exists() and not force:
        raise FileExistsError(f"File already exists: {path}")
    path.write_text(content, encoding="utf-8")


def main() -> int:
    args = parse_args()

    if not re.fullmatch(r"[A-Z][A-Za-z0-9]*", args.name):
        print("[FAIL] --name must be PascalCase.")
        return 1
    if not re.fullmatch(r"[A-Za-z][A-Za-z0-9_]*", args.type):
        print("[FAIL] --type must start with a letter and use alphanumeric/_ only.")
        return 1

    skill_root = Path(__file__).resolve().parents[1]
    model_template = (skill_root / "assets/templates/custom_widget.dart.tmpl").read_text(
        encoding="utf-8"
    )
    parser_template = (
        skill_root / "assets/templates/custom_widget_parser.dart.tmpl"
    ).read_text(encoding="utf-8")

    file_basename = to_snake_case(args.name)
    parser_class = f"Stac{args.name}Parser"
    mapping = {
        "__CLASS_NAME__": args.name,
        "__WIDGET_TYPE__": args.type,
        "__FILE_BASENAME__": file_basename,
        "__PARSER_CLASS__": parser_class,
    }

    out_dir = Path(args.out_dir).expanduser().resolve()
    out_dir.mkdir(parents=True, exist_ok=True)

    model_file = out_dir / f"{file_basename}.dart"
    parser_file = out_dir / f"{file_basename}_parser.dart"

    # Pre-check both files before writing to avoid partial creation
    if not args.force:
        if model_file.exists():
            print(f"[FAIL] File already exists: {model_file}")
            return 1
        if parser_file.exists():
            print(f"[FAIL] File already exists: {parser_file}")
            return 1

    try:
        write_file(model_file, render(model_template, mapping), args.force)
        write_file(parser_file, render(parser_template, mapping), args.force)
    except FileExistsError as exc:
        # This should not happen due to pre-check, but handle it anyway
        print(f"[FAIL] {exc}")
        return 1

    print(f"[OK] Created {model_file}")
    print(f"[OK] Created {parser_file}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
