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
- Generated Stac snippet catalog with `stac.*` prefixes.
  - `stac.widget.*`
  - `stac.action.*`
  - `stac.screen`
  - `stac.theme`

## Wrap Quick Fix Scope

Wrap quick fixes are available in any Dart file, but only when cursor/selection is on a `Stac*(` widget expression.

## Snippet Scope

Snippets are shown only in Stac DSL contexts:

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
- `stacVscode.enableSnippets`: enable/disable `stac.*` snippet completions.

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
