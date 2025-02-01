# Stac Web View

A webView support for [Stac](https://pub.dev/packages/stac).

## Usage

1. Add `stac_webview` as a dependency in your pubspec.yaml file.

Install the plugin by running the following command from the project root:

```bash
flutter pub add stac_webview
```

or add it manually in your `pubspec.yaml` file:

```yaml
  dependencies:
    stac_webview:
```

2. Add `StacWebViewParser` in Stac initialize.

```dart
void main() async {
  await Stac.initialize(
    parsers: const [
      StacWebViewParser(),
    ],
  );

  runApp(const MyApp());
}
```

3. Add Stac WebView widget in your JSONs.

```JSON
{
  "type": "webView",
  "url": "https://github.com/stac/stac"
}
```