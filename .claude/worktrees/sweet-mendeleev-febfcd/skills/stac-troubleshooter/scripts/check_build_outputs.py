#!/usr/bin/env python3
"""Check that expected build output directory exists and has JSON files."""

from __future__ import annotations

import argparse
from pathlib import Path
import sys


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Validate Stac build output directory.")
    parser.add_argument("--project-root", required=True, help="Project root path")
    parser.add_argument(
        "--expected-dir",
        required=True,
        help="Expected build output directory, relative to project root",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    root = Path(args.project_root).expanduser().resolve()

    if not root.exists() or not root.is_dir():
        print(f"[FAIL] Invalid project root: {root}")
        return 1

    expected = root / args.expected_dir
    if not expected.exists() or not expected.is_dir():
        print(f"[FAIL] Build output directory not found: {expected}")
        return 1

    json_files = sorted(expected.rglob("*.json"))
    if not json_files:
        print(f"[FAIL] No JSON build artifacts found under: {expected}")
        return 1

    print(f"[OK] Build output directory: {expected}")
    print(f"[OK] JSON artifacts found: {len(json_files)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
