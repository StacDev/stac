# Mirai Web View

A webView support for Mirai.

## Usage

1. Add `mirai_webview` as a dependency in your pubspec.yaml file.

```yaml
  dependencies:
    mirai_webview:
```

2. Add `MiraiWebViewParser` in Mirai initialize.

```dart
void main() async {
  await Mirai.initialize(
    parsers: const [
      MiraiWebViewParser(),
    ],
  );

  runApp(const MyApp());
}
```

3. Add Mirai WebView widget in your JSONs.

```JSON
{
  "type": "webView",
  "url": "https://github.com/BuildMirai/mirai"
}
```