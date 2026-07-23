#!/usr/bin/env python3
"""Scaffold a Stac screen file from template."""

from __future__ import annotations

import argparse
from pathlib import Path
import re
import sys


def snake_to_camel(name: str) -> str:
    parts = [p for p in name.split("_") if p]
    if not parts:
        return name
    return parts[0] + "".join(p.capitalize() for p in parts[1:])


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Create a Stac screen Dart file.")
    parser.add_argument("--screen-name", required=True, help="Screen name in snake_case.")
    parser.add_argument("--out-dir", required=True, help="Output directory for dart file.")
    parser.add_argument(
        "--with-navigation",
        action="store_true",
        help="Include an example navigation button block.",
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="Overwrite file if it already exists.",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    screen_name = args.screen_name.strip()

    if not re.fullmatch(r"[a-z][a-z0-9_]*", screen_name):
        print("[FAIL] --screen-name must start with a lowercase letter and contain only [a-z0-9_]")
        return 1

    skill_root = Path(__file__).resolve().parents[1]
    template_path = skill_root / "assets" / "templates" / "screen.dart.tmpl"
    template = template_path.read_text(encoding="utf-8")

    function_name = snake_to_camel(screen_name)
    title = " ".join(part.capitalize() for part in screen_name.split("_"))

    if args.with_navigation:
        navigation_block = """          StacSizedBox(height: 16),
          StacFilledButton(
            onPressed: StacNavigator.pushStac('detail_screen'),
            child: StacText(data: 'Go to Detail'),
          ),"""
    else:
        navigation_block = "          // Add interactive widgets here."

    content = (
        template.replace("__SCREEN_NAME__", screen_name)
        .replace("__FUNCTION_NAME__", function_name)
        .replace("__TITLE__", title)
        .replace("__NAVIGATION_BLOCK__", navigation_block)
    )

    out_dir = Path(args.out_dir).expanduser().resolve()
    out_dir.mkdir(parents=True, exist_ok=True)
    out_file = out_dir / f"{screen_name}.dart"

    if out_file.exists() and not args.force:
        print(f"[FAIL] File already exists: {out_file} (use --force to overwrite)")
        return 1

    out_file.write_text(content, encoding="utf-8")
    print(f"[OK] Created {out_file}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
