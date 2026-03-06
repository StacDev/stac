# Stac Web View

[![pub package](https://img.shields.io/pub/v/stac_webview.svg?label=stac_webview&color=blue)](https://pub.dev/packages/stac_webview)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A WebView support package for [Stac](https://pub.dev/packages/stac).

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
  "url": "https://github.com/StacDev/stac"
}
```