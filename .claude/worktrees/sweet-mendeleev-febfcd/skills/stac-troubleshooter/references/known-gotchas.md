# Known Gotchas

- Missing `lib/default_stac_options.dart` after partial init.
- Missing `@StacScreen` annotation in otherwise valid Dart file.
- Parser class implemented but not passed into `Stac.initialize`.
- Cache strategy hides recent cloud updates during testing.
- Generated `stac/.build` expected by workflow but not created yet.
