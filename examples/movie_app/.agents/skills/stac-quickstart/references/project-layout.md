# Project Layout

## Minimum Expected Structure

```text
<project-root>/
  lib/
    main.dart
    default_stac_options.dart
  stac/
    hello_world.dart
  pubspec.yaml
```

## Required Signals

- `main.dart` calls `Stac.initialize(...)`.
- `stac/` contains at least one file with `@StacScreen(...)`.
- `default_stac_options.dart` defines `StacOptions` with project details.

## Recommended Generated Output

```text
stac/.build/
  <screen-name>.json
```
