#!/usr/bin/env python3
"""Scaffold a Stac theme reference file from template."""

from __future__ import annotations

import argparse
from pathlib import Path
import re
import sys


def to_getter_name(theme_name: str) -> str:
    parts = [p for p in re.split(r"[_\-\s]+", theme_name) if p]
    if not parts:
        return "appTheme"
    return parts[0] + "".join(p.capitalize() for p in parts[1:])


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Create a Stac theme ref Dart file.")
    parser.add_argument("--theme-name", required=True, help="Theme name identifier.")
    parser.add_argument("--out-file", required=True, help="Target output .dart file path.")
    parser.add_argument(
        "--force",
        action="store_true",
        help="Overwrite file if it already exists.",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    theme_name = args.theme_name.strip()

    if not re.fullmatch(r"[A-Za-z0-9_\-]+", theme_name):
        print("[FAIL] --theme-name must be alphanumeric with _ or -")
        return 1

    skill_root = Path(__file__).resolve().parents[1]
    template_path = skill_root / "assets" / "templates" / "theme_ref.dart.tmpl"
    template = template_path.read_text(encoding="utf-8")

    getter_name = to_getter_name(theme_name)

    content = (
        template.replace("__THEME_NAME__", theme_name)
        .replace("__GETTER_NAME__", getter_name)
    )

    out_file = Path(args.out_file).expanduser().resolve()
    out_file.parent.mkdir(parents=True, exist_ok=True)

    if out_file.exists() and not args.force:
        print(f"[FAIL] File already exists: {out_file} (use --force to overwrite)")
        return 1

    out_file.write_text(content, encoding="utf-8")
    print(f"[OK] Created {out_file}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
