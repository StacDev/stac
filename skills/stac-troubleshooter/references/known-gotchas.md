# Known Gotchas

- Missing `lib/default_stac_options.dart` after partial init.
- Missing `@StacScreen` annotation in otherwise valid Dart file.
- Parser class implemented but not passed into `Stac.initialize`.
- Cache strategy hides recent cloud updates during testing.
- Generated `stac/.build` expected by workflow but not created yet.
- App still on `package:flutter/material.dart` with stac 2.0.0-dev.2 or later: Stac widgets ignore the app theme, and app bars, text fields and back buttons throw "No MaterialLocalizations found" even under a `MaterialApp`. `StacApp` also rejects `ThemeMode` and `ThemeData` values with a type error, and debug builds log a warning naming `material_ui`. Run `dart fix --apply --code=migrate_design_widgets` (Flutter 3.50 or later) and `flutter pub add material_ui`, and wrap widgets from packages that haven't moved to `material_ui` in `MaterialUiCompatibilityBridge`.
