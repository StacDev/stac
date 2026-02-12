# Change Log

All notable changes to the "stac-vscode" extension will be documented in this file.

## [0.1.7]

- Fixed screen switching reliability in preview:
  - Preserves cursor-selected screen as preferred during refreshes.
  - Prevents unexpected fallback to first screen during background refresh.
  - Still defaults to the first screen when opening preview fresh.

## [0.1.6]

- Added automatic preview-host port recovery:
  - Detects `Address already in use` when starting Flutter web server.
  - Automatically finds and retries on the next available localhost port.
  - Recreates preview webview panel when host port changes.

## [0.1.5]

- Fixed preview JSON parsing for nested map/list payloads in Flutter web host.
- Resolved runtime type mismatch:
  - `LinkedMap<dynamic, dynamic>` not being a subtype of `Map<String, dynamic>`.

## [0.1.4]

- Updated multi-screen preview behavior:
  - `Stac: Open Preview` now defaults to the first `@StacScreen` in the file.
  - Preview automatically switches when cursor moves inside another screen function.
  - Screen selection now uses cursor containment in screen range (annotation to function end), not nearest function signature.
  - Removed automatic sticky screen preference during refresh so default-first behavior remains consistent.

## [0.1.3]

- Improved preview delivery reliability to fix intermittent empty preview states:
  - Added render request IDs and host render acknowledgements.
  - Added automatic payload re-delivery from webview until host confirms render.
  - Added webview-ready replay path so first payload is not dropped during startup.
  - Switched preview host URL to `127.0.0.1` for consistent origin handling.
  - Avoided unnecessary webview reloads when host URL does not change.
- Added periodic ready pings from Flutter preview host during startup.

## [0.1.2]

- Reworked Flutter preview host UI:
  - Device frame selection (mobile/tablet/desktop)
  - Zoom controls
  - Grid background and framed viewport
  - Debounced JSON updates for smoother live preview
- Fixed webview-to-host bridge robustness for preview message delivery.
- Updated preview status flow to show host-acknowledged render state.

## [0.1.1]

- Fixed preview host project-root resolution for nested Flutter projects.
- Improved preview host startup diagnostics and increased default startup timeout.
- Fixed preview webview-to-host message bridge reliability in embedded mode.
- Added editor title icon action for `Stac: Open Preview`.
- Added extension `repository`, `license`, and local `LICENSE` file for packaging.

## [0.1.0]

- Added Stac wrap quick-fix actions in Cmd+.:
  - Wrap with `StacContainer`
  - Wrap with `StacPadding`
  - Wrap with `StacCenter`
  - Wrap with `StacAlign`
  - Wrap with `StacSizedBox`
  - Wrap with `StacExpanded`
  - Wrap with `Stac widget...`
- Added generated Stac widget catalog from `packages/stac_core`.
- Added two snippets:
  - `stac screen`
  - `stac theme`
- Added extension configuration for wrap/snippet behavior.
- Added provider and utility tests for wrapping/snippets.
