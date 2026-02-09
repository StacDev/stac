# Custom Action Checklist

1. Define action model extending `StacAction`.
2. Set unique `actionType` string.
3. Add `@JsonSerializable()` and `part` file.
4. Implement `fromJson` and `toJson`.
5. Create parser implementing `StacActionParser<Model>`.
6. Register parser in `Stac.initialize(actionParsers: [...])`.
7. Trigger action from widget callback (`onPressed`, `onTap`, etc.).
