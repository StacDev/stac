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

## State in Custom Widgets

- Placeholders in the widget's own fields are resolved before `parse` is
  called. To give a single placeholder the field's type (`"value":
  "{{rating}}"` as a `double`), register the fields:

```dart
StacFieldType.registerWidget(
  'ratingBar',
  model: 'RatingModel',
  fields: {'value': 'double', 'readOnly': 'bool'},
);
```

- Read and write state in `parse` with `StacScope.of(context)`: `watch(...)`
  rebuilds the widget when the value changes, `write(path, value)` stores a
  value.
- Run a callback action with `model.onChanged.parseWithValue(context, value)`
  so the action can read `{{$value}}`.
