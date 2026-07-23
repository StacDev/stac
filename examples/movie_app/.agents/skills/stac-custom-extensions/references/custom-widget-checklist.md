# Custom Widget Checklist

1. Define widget model extending `StacWidget`.
2. Set unique `type` string.
3. Add `@JsonSerializable()` and `part` file.
4. Implement `fromJson` and `toJson`.
5. Create parser extending `StacParser<Model>`.
6. Register parser in `Stac.initialize(parsers: [...])`.
7. Run:

```bash
dart run build_runner build --delete-conflicting-outputs
```
