# Migration Cheatsheet

## JSON to Dart Mapping

- `type: "text"` -> `StacText(...)`
- `type: "container"` -> `StacContainer(...)`
- `actionType: "navigate"` -> `StacNavigateAction(...)`
- `actionType: "setValue"` -> `StacSetValueAction(...)`

## Strategy

1. Migrate one screen at a time.
2. Keep generated json under version control only when required.
3. Run `stac build` after each migrated screen.
