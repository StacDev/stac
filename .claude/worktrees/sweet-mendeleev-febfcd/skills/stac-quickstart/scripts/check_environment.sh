#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage: check_environment.sh

Checks whether flutter, dart, and stac commands are available.
Exits non-zero if required tools are missing.
USAGE
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

missing=0

check_cmd() {
  local cmd="$1"
  local required="$2"

  if command -v "$cmd" >/dev/null 2>&1; then
    printf "[OK] %s found: %s\n" "$cmd" "$(command -v "$cmd")"
    "$cmd" --version 2>/dev/null | head -n 1 || true
  else
    if [[ "$required" == "required" ]]; then
      printf "[FAIL] %s not found\n" "$cmd"
      missing=1
    else
      printf "[WARN] %s not found\n" "$cmd"
    fi
  fi
}

check_cmd flutter required
check_cmd dart required
check_cmd stac optional

if [[ "$missing" -ne 0 ]]; then
  echo "Environment check failed: install missing required tools first."
  exit 1
fi

echo "Environment check passed."
