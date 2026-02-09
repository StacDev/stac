---
name: stac-troubleshooter
description: Diagnose Stac build, deploy, rendering, caching, and navigation issues using repeatable checks. Use when users report stac build finding no screens, deploy mismatches, runtime unknown widget/action errors, cache staleness, or migration regressions.
---

# Stac Troubleshooter

## Overview

Use this skill to run structured diagnostics and return precise fixes for Stac project issues.

## Workflow

1. Run `scripts/stac_doctor.py --project-root <path>` for baseline checks.
2. Run `scripts/check_build_outputs.py --project-root <path> --expected-dir stac/.build`.
3. Triage using focused playbooks under `references/`.
4. Return root cause, fix commands, and post-fix verification steps.

## Required Inputs

- Project root path.
- Failing command and output (if available).
- Affected route/screen name (if runtime issue).

## Output Contract

- Classify issue as setup/build/deploy/runtime/cache/navigation.
- Provide exact remedial commands and expected outcomes.
- Include one verification command or file check per fix.

## References

- Read `references/error-playbooks.md` for common Stac errors and fixes.
- Read `references/cache-debug.md` for stale content and cache strategy checks.
- Read `references/navigation-debug.md` for route/action stack behavior.
- Read `references/migration-cheatsheet.md` for JSON-to-Dart migration mapping.
- Read `references/known-gotchas.md` for recurring pitfalls.

## Scripts

- `scripts/stac_doctor.py --project-root <path> [--json]`
- `scripts/check_build_outputs.py --project-root <path> --expected-dir stac/.build`
