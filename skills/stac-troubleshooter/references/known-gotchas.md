# Known Gotchas

- Missing `lib/default_stac_options.dart` after partial init.
- Missing `@StacScreen` annotation in otherwise valid Dart file.
- Parser class implemented but not passed into `Stac.initialize`.
- Cache strategy hides recent cloud updates during testing.
- Generated `stac/.build` expected by workflow but not created yet.

## State

- A value set with `setValue` `path` goes to the screen unless a nearer level
  has it; other screens do not see it. Use `$app.name` for app-wide values.
- `key` entries keep the old meaning: the whole string is one name, written
  to the app. Mixing `key: 'user.name'` and `path: 'user.name'` gives two
  different values.
- Unquoted words in conditions are read as text when no variable has that
  name, and log a warning. Quote text: `{{status}} == 'active'`.
- Typed DSL fields (`bool`, `double`, ...) cannot hold `'{{...}}'`; use `bind`
  on inputs, or `StacWidget(jsonData: {...})`.
- Dart strings need `\$` for `$item`, `$args`, `$app`: `'{{\$item.id}}'`.
- A data provider's variable is only visible inside it.
- In a list inside an item template, `$item` is the inner item.
- `emptyWidget` replaces the whole list; on slivers it must be a sliver.
