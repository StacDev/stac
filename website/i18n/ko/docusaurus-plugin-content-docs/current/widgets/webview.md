# WebView

Stac WebView를 사용하면 JSON을 사용하여 앱에 WebView 위젯을 표시할 수 있습니다. [webview_flutter](https://pub.dev/packages/webview_flutter) 플러그인을 기반으로 합니다.

## Usage

1. pubspec.yaml 파일에 `stac_webview`를 종속성으로 추가합니다.

프로젝트 루트에서 다음 명령을 실행하여 플러그인을 설치합니다:

```bash
flutter pub add stac_webview
```

또는 `pubspec.yaml` 파일에 수동으로 추가합니다:

```yaml
  dependencies:
    stac_webview:
```

2. Stac 초기화에 `StacWebViewParser`를 추가합니다.

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
| `url`             | `String`         | `WebView`에 로드할 URL입니다.                                                       |
| `javaScriptMode`  | `JavaScriptMode` | JavaScript 실행이 활성화되어 있는지 설정합니다. 기본값은 `JavaScriptMode.unrestricted`입니다. |
| `backgroundColor` | `String`         | `WebView`의 배경색입니다. 기본값은 `#FFFFFF`입니다.                                |
| `userAgent`       | `String?`        | `WebView`의 사용자 에이전트입니다.                                                       |
| `enableZoom`      | `bool`           | `WebView`에 대해 줌이 활성화되어 있는지 설정합니다. 기본값은 `false`입니다.                     |
| `layoutDirection` | `TextDirection`  | `WebView`의 레이아웃 방향입니다. 기본값은 `TextDirection.ltr`입니다.                 |

## Example JSON

```json
{
  "type": "webView",
  "url": "https://github.com/StacDev/stac"
}
```
