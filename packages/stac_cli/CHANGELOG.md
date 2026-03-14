## 1.6.0

- feat: Add console URL logging for successful deployments.
- fix: Remove snake case conversion.

## 1.5.1

- fix: Update workflow to fix missing required environment variable `STAC_BASE_API_URL`.
- fix: Re-enable stac_cli release workflow and update package and dependency versions.
- feat: Enable compile-time environment variable injection for CLI release builds.

## 1.5.0

- feat: Open-source Stac CLI.
- feat: Add stac_cli release workflow.
- feat: Add `DynamicDataProvider` and `TemplateBuilder`.
- feat: Migrate linting from `flutter_lints` to `lints/recommended`.
- refactor: Convert `stac_logger` to a pure Dart package.
- refactor: Improve code formatting and structure across multiple files.
- refactor: Pass `projectDir` as a parameter to `_processArtifacts` and `_convertCallableToJson`.
- refactor: Remove abbreviation for version option in upgrade command.
- fix: Update JSON output formatting to use `jsonEncode` for proper serialization.
- fix: Change return value from 1 to 0 when project selection fails.
- docs: Improve README with quick start guide and detailed features.

## 0.0.1

- Initial release with Dart-to-JSON conversion support.
