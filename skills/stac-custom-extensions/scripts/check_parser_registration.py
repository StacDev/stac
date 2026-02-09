#!/usr/bin/env python3
"""Check that a parser class appears in the same file as Stac.initialize."""

from __future__ import annotations

import argparse
from pathlib import Path
import sys


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Validate parser registration in a main.dart file."
    )
    parser.add_argument("--main-dart", required=True, help="Path to main.dart")
    parser.add_argument(
        "--parser-class", required=True, help="Parser class to locate in file"
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    main_dart = Path(args.main_dart).expanduser().resolve()

    if not main_dart.exists():
        print(f"[FAIL] File not found: {main_dart}")
        return 1

    content = main_dart.read_text(encoding="utf-8", errors="ignore")
    init_index = content.find("Stac.initialize(")
    parser_index = content.find(args.parser_class)

    if init_index < 0:
        print("[FAIL] Stac.initialize(...) call not found")
        return 1

    if parser_index < 0:
        print(f"[FAIL] Parser class not found: {args.parser_class}")
        return 1

    if parser_index < init_index:
        print(
            "[WARN] Parser class appears before initialize call; verify registration location manually"
        )
    else:
        print(f"[OK] Found parser class near/after initialize call: {args.parser_class}")

    print("Registration check completed.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
