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
- Right-side Stac preview panel:
  - `Stac: Open Preview`
  - `Stac: Select Preview Screen`
  - `Stac: Stop Preview`
  - JSON generation strategy: runner fast path (`screen().toJson()`) with build fallback.

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
- `Stac: Open Preview`
- `Stac: Select Preview Screen`
- `Stac: Stop Preview`

## Extension Settings

- `stacVscode.enableWrapQuickFix`: enable/disable wrap quick fixes.
- `stacVscode.wrapPresets`: choose preset wrappers shown in quick-fix menu.
- `stacVscode.enableSnippets`: enable/disable `stac screen`/`stac theme` snippets.
- `stacVscode.preview.enable`: enable/disable preview commands.
- `stacVscode.preview.autoRefreshOnSave`: refresh preview on save.
- `stacVscode.preview.jsonStrategy`: `runnerThenBuild`, `runnerOnly`, `buildOnly`.
- `stacVscode.preview.buildCommand`: fallback build command. Supports `${projectFolder}` and `${workspaceFolder}` tokens.
- `stacVscode.preview.outputDirCandidates`: JSON output lookup directories.
- `stacVscode.preview.hostPort`: local preview host port.
- `stacVscode.preview.startupTimeoutMs`: preview host startup timeout (default `120000` for first-run Flutter web builds).

## Development

```bash
npm run compile
npm run lint
npm run test
```

## Preview Requirements

- Flutter SDK with Dart `3.9.2+`.
- If preview startup fails, open **Output** panel and select **Stac Preview** for detailed logs.

Catalog generation:

```bash
npm run generate:catalog
```
