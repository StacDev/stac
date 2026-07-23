---
name: stac-screen-builder
description: Build Stac DSL screens and themes from product requirements with safe defaults and reusable templates. Use when users ask to create or refactor StacScreen files, map UI requirements to Stac widgets/actions/styles, or scaffold new screen/theme files.
---

# Stac Screen Builder

## Overview

Use this skill to convert feature requirements into maintainable Stac DSL screens and theme definitions.

## Workflow

1. Translate user requirements into route names, states, and actions.
2. Select widgets using `references/widget-selector.md`.
3. Select actions using `references/action-recipes.md`.
4. Apply style patterns from `references/style-recipes.md`.
5. Apply route semantics from `references/navigation-patterns.md`.
6. Scaffold files using scripts when requested.

## Required Inputs

- Target screen name (`snake_case` recommended).
- Desired interactions (navigation, network, forms, state changes).
- Whether a theme reference is needed.

## Output Contract

- Return valid Stac DSL snippets with `@StacScreen` or `@StacThemeRef`.
- Keep generated screen names stable and explicit.
- Use built-in Stac widgets/actions first, then custom extensions if needed.

## References

- Read `references/widget-selector.md` to choose layout and interactive widgets.
- Read `references/action-recipes.md` for navigation/form/network/state actions.
- Read `references/style-recipes.md` for color, spacing, and text style patterns.
- Read `references/navigation-patterns.md` for stack-safe navigation actions.

## Scripts

- `scripts/new_screen.py --screen-name <name> --out-dir <path> [--with-navigation]`
- `scripts/new_theme_ref.py --theme-name <name> --out-file <path>`

## Templates

- `assets/templates/screen.dart.tmpl`
- `assets/templates/theme_ref.dart.tmpl`
