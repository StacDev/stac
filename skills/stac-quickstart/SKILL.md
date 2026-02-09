---
name: stac-quickstart
description: Help initialize and validate a Stac-enabled Flutter project and ship a first server-driven screen. Use when users ask to set up Stac CLI, run stac init/build/deploy, verify project prerequisites, or troubleshoot first-run setup and missing configuration files.
---

# Stac Quickstart

## Overview

Use this skill to set up Stac in a Flutter project, verify required files, and complete the first build/deploy loop safely.

## Workflow

1. Run `scripts/check_environment.sh` to verify local tooling.
2. Run `scripts/validate_project_layout.py --project-root <path>` to confirm Stac project structure.
3. Apply the setup flow from `references/setup-checklist.md`.
4. Execute the command sequence in `references/cli-workflow.md`.
5. Confirm required file locations from `references/project-layout.md`.

## Required Inputs

- Flutter project root path.
- Whether Stac CLI is already installed.
- Whether user wants a new or existing Stac Cloud project.

## Output Contract

- Provide exact commands to run in order.
- Include expected artifacts and verification checks.
- Flag blocking errors and the precise fix.
- Keep recommendations aligned with current Stac docs in this repository.

## References

- Read `references/setup-checklist.md` when beginning a fresh setup.
- Read `references/cli-workflow.md` when sequencing `stac` commands.
- Read `references/project-layout.md` when validating missing files or wrong structure.

## Scripts

- `scripts/check_environment.sh`: verifies `flutter`, `dart`, and `stac` availability.
- `scripts/validate_project_layout.py`: validates required Stac project files.
