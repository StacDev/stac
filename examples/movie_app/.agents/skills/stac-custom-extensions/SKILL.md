---
name: stac-custom-extensions
description: Scaffold and integrate custom Stac widgets and actions with parsers and registration checks. Use when users ask to build new StacParser or StacActionParser implementations, generate custom model classes, or verify parser registration inside Stac.initialize.
---

# Stac Custom Extensions

## Overview

Use this skill to add custom widgets/actions that serialize cleanly and register correctly in a Stac app.

## Workflow

1. Choose extension type: widget or action.
2. Scaffold model and parser files with scripts.
3. Add generated files to app codebase and run codegen.
4. Verify parser registration in `main.dart`.
5. Validate runtime wiring with a minimal usage example.

## Required Inputs

- PascalCase extension name.
- Runtime type id (`type` or `actionType`).
- Output directory for generated files.
- Path to `main.dart` for registration check.

## Output Contract

- Produce model + parser pair with consistent type ids.
- Include registration snippet for `Stac.initialize`.
- Include `build_runner` command when json serialization is used.

## References

- Read `references/custom-widget-checklist.md` for widget model/parser flow.
- Read `references/custom-action-checklist.md` for action model/parser flow.
- Read `references/parser-registration.md` for initialization wiring.
- Read `references/converters-guide.md` for converter usage patterns.

## Scripts

- `scripts/scaffold_custom_widget.py --name <Name> --type <widgetType> --out-dir <path>`
- `scripts/scaffold_custom_action.py --name <Name> --action-type <actionType> --out-dir <path>`
- `scripts/check_parser_registration.py --main-dart <path> --parser-class <ClassName>`

## Templates

- `assets/templates/custom_widget.dart.tmpl`
- `assets/templates/custom_widget_parser.dart.tmpl`
- `assets/templates/custom_action.dart.tmpl`
- `assets/templates/custom_action_parser.dart.tmpl`
