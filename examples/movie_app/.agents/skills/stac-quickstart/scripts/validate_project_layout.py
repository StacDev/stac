#!/usr/bin/env python3
"""Validate required project structure for a Stac-enabled Flutter app."""

from __future__ import annotations

import argparse
from pathlib import Path
import re
import sys


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Validate Stac project layout and required files.",
    )
    parser.add_argument(
        "--project-root",
        required=True,
        help="Path to Flutter project root.",
    )
    return parser.parse_args()


def has_stac_screen(stac_dir: Path) -> bool:
    for file in stac_dir.rglob("*.dart"):
        text = file.read_text(encoding="utf-8", errors="ignore")
        if re.search(r"@StacScreen\s*\(", text):
            return True
    return False


def check_file(path: Path, label: str, failures: list[str]) -> None:
    if path.exists():
        print(f"[OK] {label}: {path}")
    else:
        print(f"[FAIL] Missing {label}: {path}")
        failures.append(label)


def main() -> int:
    args = parse_args()
    root = Path(args.project_root).expanduser().resolve()

    failures: list[str] = []

    if not root.exists() or not root.is_dir():
        print(f"[FAIL] Project root is not a directory: {root}")
        return 1

    check_file(root / "pubspec.yaml", "pubspec.yaml", failures)
    check_file(root / "lib" / "main.dart", "lib/main.dart", failures)
    check_file(
        root / "lib" / "default_stac_options.dart",
        "lib/default_stac_options.dart",
        failures,
    )

    stac_dir = root / "stac"
    if stac_dir.exists() and stac_dir.is_dir():
        print(f"[OK] stac directory: {stac_dir}")
        if has_stac_screen(stac_dir):
            print("[OK] Found at least one @StacScreen annotation")
        else:
            print("[FAIL] No @StacScreen annotations found under stac/")
            failures.append("stac-screen-annotation")
    else:
        print(f"[FAIL] Missing stac directory: {stac_dir}")
        failures.append("stac-directory")

    if failures:
        print(f"\nValidation failed with {len(failures)} issue(s): {', '.join(failures)}")
        return 1

    print("\nValidation passed.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
