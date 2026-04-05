# Change Log

All notable changes to the "stac-vscode" extension will be documented in this file.

## [0.3.0]

- Bump `stac` dependency to ^1.4.0 for enhanced input decoration, `copyWith` support for text themes, and re-exported `stac_core`.

## [0.2.0]

- Bug fixes & improvements

## [0.1.0]

### Live Preview
- Side-by-side preview panel for any `@StacScreen` — updates on save.
- Android / iOS / Web device toggles with `TargetPlatform` simulation (scroll physics, page transitions, AppBar behavior).
- Theme discovery from `@StacThemeRef` annotations with live theme selection dropdown.
- Multi-screen support with automatic cursor-based screen switching.
- Runner fast-path JSON generation (`screen().toJson()`) with build fallback.
- Automatic port recovery when the preview host port is in use.
- Mobile viewport frame with rounded border styling.

### Wrap Quick Fixes
- Cmd+. quick-fix wrapping for Stac widgets in Dart files.
- Presets: `StacContainer`, `StacPadding`, `StacCenter`, `StacAlign`, `StacSizedBox`, `StacExpanded`.
- "Wrap with Stac widget…" for any Stac widget class.
- Auto-generated widget catalog from `packages/stac_core`.

### Snippets
- `stac screen` — new screen template.
- `stac theme` — new theme template.
- Context-aware: only shown in Stac DSL files.
