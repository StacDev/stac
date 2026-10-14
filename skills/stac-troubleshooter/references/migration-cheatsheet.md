# Migration Cheatsheet

## JSON to Dart Mapping

- `type: "text"` -> `StacText(...)`
- `type: "container"` -> `StacContainer(...)`
- `actionType: "navigate"` -> `StacNavigateAction(...)`
- `actionType: "setValue"` -> `StacSetValueAction(...)`

## State Migration

- `StacDynamicView` + `itemTemplate` -> `StacDataProvider` + `items` on the
  list; item fields become `{{$item.field}}`.
- App-wide id variables set before `navigate` (such as `movie_id`) ->
  `arguments: {'id': '{{$item.id}}'}` and `{{$args.id}}` on the next screen.
- `setValue` `key` -> `path` (with `$app.` for values every screen reads).
- `onChanged` + `setValue` that only copies an input's value -> `bind`.
- `StacRegistry.instance.setValue/getValue` in Dart -> `Stac.state.set/get`.
- Pull to refresh that replaced the child -> `StacRefetchAction(id: ...)`.

## Strategy

1. Migrate one screen at a time.
2. Keep generated json under version control only when required.
3. Run `stac build` after each migrated screen.
