# WebView

The Stac WebView allows you to display WebView widget using JSON in your app. It is based on the [webview_flutter](https://pub.dev/packages/webview_flutter) plugin.

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
## Properties

| Property          | Type             | Description                                                                             |
|-------------------|------------------|-----------------------------------------------------------------------------------------|
| `url`             | `String`         | The URL to load in the `WebView`.                                                       |
| `javaScriptMode`  | `JavaScriptMode` | Sets whether JavaScript execution is enabled. Default is `JavaScriptMode.unrestricted`. |
| `backgroundColor` | `String`         | Background color of the `WebView`. Default is `#FFFFFF`.                                |
| `userAgent`       | `String?`        | The user agent for the `WebView`.                                                       |
| `enableZoom`      | `bool`           | Sets whether zoom is enabled for the `WebView`. Default is `false`.                     |
| `layoutDirection` | `TextDirection`  | The layout direction for the `WebView`. Default is `TextDirection.ltr`.                 |

## Example JSON

```json
{
  "type": "webView",
  "url": "https://github.com/buildStac/stac"
}
```