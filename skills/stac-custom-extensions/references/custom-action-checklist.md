# Custom Action Checklist

1. Define action model extending `StacAction`.
2. Set unique `actionType` string.
3. Add `@JsonSerializable()` and `part` file.
4. Implement `fromJson` and `toJson`.
5. Create parser implementing `StacActionParser<Model>`.
6. Register parser in `Stac.initialize(actionParsers: [...])`.
7. Trigger action from widget callback (`onPressed`, `onTap`, etc.).

## State in Custom Actions

- Placeholders in the action's fields are resolved just before `onCall`, so
  they read current state, `$value` and `$item`.
- Write state from `onCall` with `StacScope.of(context).write(path, value)`
  or `.apply([...setValue entries])`.
- Return a `Future` from `onCall` when callers, such as `refreshIndicator`,
  should wait for the action.
