#!/usr/bin/env python3
"""Run baseline health checks for Stac projects."""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import re
import sys


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Run diagnostics for a Stac project.")
    parser.add_argument("--project-root", required=True, help="Path to project root")
    parser.add_argument("--json", action="store_true", help="Emit JSON output")
    return parser.parse_args()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8", errors="ignore")


def has_annotation(stac_dir: Path) -> bool:
    for dart_file in stac_dir.rglob("*.dart"):
        if re.search(r"@StacScreen\s*\(", read(dart_file)):
            return True
    return False


def add_result(results: list[dict[str, str]], status: str, check: str, detail: str) -> None:
    results.append({"status": status, "check": check, "detail": detail})


def main() -> int:
    args = parse_args()
    root = Path(args.project_root).expanduser().resolve()
    results: list[dict[str, str]] = []

    if not root.exists() or not root.is_dir():
        add_result(results, "fail", "project-root", f"Not a directory: {root}")
        if args.json:
            print(json.dumps({"results": results}, indent=2))
        else:
            print(f"[FAIL] Not a directory: {root}")
        return 1

    pubspec = root / "pubspec.yaml"
    main_dart = root / "lib" / "main.dart"
    options_dart = root / "lib" / "default_stac_options.dart"
    stac_dir = root / "stac"
    gitignore = root / ".gitignore"
    build_dir = root / "stac" / ".build"

    add_result(
        results,
        "pass" if pubspec.exists() else "fail",
        "pubspec",
        str(pubspec),
    )
    add_result(
        results,
        "pass" if main_dart.exists() else "fail",
        "main.dart",
        str(main_dart),
    )
    add_result(
        results,
        "pass" if options_dart.exists() else "fail",
        "default_stac_options.dart",
        str(options_dart),
    )

    if stac_dir.exists() and stac_dir.is_dir():
        add_result(results, "pass", "stac-directory", str(stac_dir))
        found = has_annotation(stac_dir)
        add_result(
            results,
            "pass" if found else "fail",
            "stac-screen-annotation",
            "Found @StacScreen in stac/" if found else "No @StacScreen found in stac/",
        )
    else:
        add_result(results, "fail", "stac-directory", str(stac_dir))
        add_result(results, "fail", "stac-screen-annotation", "stac/ missing")

    if main_dart.exists():
        has_initialize = "Stac.initialize(" in read(main_dart)
        add_result(
            results,
            "pass" if has_initialize else "fail",
            "stac-initialize",
            "Stac.initialize call found" if has_initialize else "Stac.initialize call missing",
        )

    if gitignore.exists():
        ignores_build = ".build" in read(gitignore)
        add_result(
            results,
            "pass" if ignores_build else "warn",
            "build-ignore",
            ".build ignore rule present" if ignores_build else "Consider ignoring stac/.build",
        )
    else:
        add_result(results, "warn", "build-ignore", ".gitignore not found")

    if build_dir.exists() and build_dir.is_dir():
        artifact_count = len(list(build_dir.rglob("*.json")))
        add_result(
            results,
            "pass" if artifact_count > 0 else "warn",
            "build-artifacts",
            f"JSON artifacts: {artifact_count}",
        )
    else:
        add_result(results, "warn", "build-artifacts", f"Build output missing: {build_dir}")

    if args.json:
        print(json.dumps({"results": results}, indent=2))
    else:
        for entry in results:
            print(f"[{entry['status'].upper()}] {entry['check']}: {entry['detail']}")

    has_fail = any(item["status"] == "fail" for item in results)
    return 1 if has_fail else 0


if __name__ == "__main__":
    sys.exit(main())
