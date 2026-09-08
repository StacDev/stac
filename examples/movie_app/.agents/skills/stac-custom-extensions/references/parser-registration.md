# Parser Registration

## Widget Parser

```dart
await Stac.initialize(
  options: defaultStacOptions,
  parsers: const [
    MyWidgetParser(),
  ],
);
```

## Action Parser

```dart
await Stac.initialize(
  options: defaultStacOptions,
  actionParsers: const [
    MyActionParser(),
  ],
);
```

## Validation Rule

- Parser class name should appear in the same file that calls `Stac.initialize`.
