# Stac VS Code Extension

VS Code tooling for Stac DSL development.

## Features

- Cmd+. quick-fix wrapping for Stac widgets in Dart files.
  - Wrap with `StacContainer`
  - Wrap with `StacPadding`
  - Wrap with `StacCenter`
  - Wrap with `StacAlign`
  - Wrap with `StacSizedBox`
  - Wrap with `StacExpanded`
  - Wrap with `Stac widget...` (type any Stac widget class)
- Two Stac DSL snippets:
  - type `stac screen` for a new screen template
  - type `stac theme` for a new theme template

## Wrap Quick Fix Scope

Wrap quick fixes are available in any Dart file, but only when cursor/selection is on a `Stac*(` widget expression.

## Snippet Usage

Snippets are shown only in Stac DSL contexts, then type:

- `stac screen`
- `stac theme`

Stac DSL context is any Dart file where one of these is true:

- file path contains `/stac/`, or
- file includes `@StacScreen` or `@StacThemeRef`, or
- file imports `package:stac_core/stac_core.dart`.

## Commands

- `Wrap with StacContainer`
- `Wrap with StacPadding`
- `Wrap with StacCenter`
- `Wrap with StacAlign`
- `Wrap with StacSizedBox`
- `Wrap with StacExpanded`
- `Wrap with Stac widget...`
- `Stac: Regenerate Catalog`

## Extension Settings

- `stacVscode.enableWrapQuickFix`: enable/disable wrap quick fixes.
- `stacVscode.wrapPresets`: choose preset wrappers shown in quick-fix menu.
- `stacVscode.enableSnippets`: enable/disable `stac screen`/`stac theme` snippets.

## Development

```bash
npm run compile
npm run lint
npm run test
```

Catalog generation:

```bash
npm run generate:catalog
```
