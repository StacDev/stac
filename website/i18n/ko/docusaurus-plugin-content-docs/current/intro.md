---
slug: /
sidebar_position: 1
---

# 시작하기 🚀

**Stac**(이전 명칭: Mirai)에 오신 것을 환영합니다. Stac은 Flutter를 위한 Server-Driven UI(SDUI) 프레임워크입니다. Stac은 개발자가 JSON을 실시간으로 활용하여 동적이고 크로스 플랫폼 애플리케이션을 구축할 수 있도록 지원합니다. 이 혁신적인 UI 개발 접근 방식은 유연하고 효율적이며 원활한 업데이트를 가능하게 하여, 빈번한 AppStore/PlayStore 릴리스의 필요성을 최소화하고 애플리케이션이 항상 신선하게 보이고 느껴지도록 보장합니다.

## 패키지

Stac 생태계는 다음 패키지들로 구성됩니다:

| 패키지 | 설명 | 링크                                                                                               |
|---------|-------------|----------------------------------------------------------------------------------------------------|
| [stac](https://github.com/StacDev/stac/tree/dev/packages/stac) | Flutter에서 server-driven UI를 구축하기 위한 기반을 제공하는 핵심 패키지입니다. | [![pub package](https://img.shields.io/pub/v/stac.svg)](https://pub.dev/packages/stac)           |
| [stac_framework](https://github.com/StacDev/stac/tree/dev/packages/stac_framework) | 핵심 패키지의 기능을 확장하고 server-driven UI 구축을 위한 추가 기능을 제공하는 프레임워크입니다. | [![pub package](https://img.shields.io/pub/v/stac_framework.svg)](https://pub.dev/packages/stac_framework) |
| [stac_webview](https://github.com/StacDev/stac/tree/dev/packages/stac_webview) | server-driven UI에 웹 뷰를 임베드할 수 있게 해주는 패키지입니다. | [![pub package](https://img.shields.io/pub/v/stac_webview.svg)](https://pub.dev/packages/stac_webview)   |


## 설치

Stac을 시작하려면 아래 설치 지침을 따르세요:

1. `pubspec.yaml` 파일에 Stac 의존성을 추가하세요:

다음 명령어를 실행하세요:

```bash
flutter pub add stac
```
이 명령은 패키지의 pubspec.yaml에 stac을 추가하고 암묵적으로 flutter pub get을 실행합니다:

또는 pubspec.yaml에서 직접 의존성을 수동으로 추가할 수 있습니다:

```yaml
dependencies:
  stac: ^<latest-version>
```
:::note
`<latest-version>`을 Stac의 최신 버전으로 교체해주세요. 최신 버전은 [Stac pub.dev 페이지](https://pub.dev/packages/stac)에서 확인할 수 있습니다.
:::

2. 터미널에서 다음 명령어를 실행하여 패키지를 설치하세요:

```bash
flutter pub get
```

3. Dart 파일에서 Stac 패키지를 import하세요:

```dart
import 'package:stac/stac.dart';
```

이제 Flutter 프로젝트에서 Stac을 사용할 준비가 되었습니다.

## Stac 사용 방법

Stac을 성공적으로 설치했으니, Flutter 프로젝트에서 동적 server-driven UI를 구축하는 방법을 알아보겠습니다.

## 1. Stac 패키지 import하기

Stac을 사용하려면 Dart 파일에서 패키지를 import해야 합니다. `main.dart`에 다음 import 문을 추가하세요:

```dart
import 'package:stac/stac.dart';
```

이 import를 통해 Stac에서 제공하는 모든 클래스와 함수에 접근할 수 있습니다.

## 2. Stac 초기화

`main` 함수에서 Stac을 초기화하여 필요한 설정을 준비하고 앱이 JSON에서 UI를 렌더링할 수 있도록 준비합니다.

### 기본 초기화
```dart
void main() async {
  await Stac.initialize();
  runApp(const MyApp());
}
```

## 3. Stac을 사용하여 UI 렌더링

`Stac.fromJson`을 사용하여 JSON 객체에서 UI를 로드하고 렌더링할 수 있습니다. Flutter 앱에 통합하는 방법은 다음과 같습니다:

```dart
import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

void main() async {
  await Stac.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StacDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stac.fromJson(json, context),
    );
  }
}
```

### Assets의 JSON 파일에서 UI 렌더링

Assets 폴더에 저장된 JSON 파일에서 UI를 로드하고 렌더링하려면 `Stac.fromAssets`를 사용할 수도 있습니다:

```dart
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'StacDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Stac.fromAsset('assets/ui.json', context),
  );
}
```

### 네트워크에서 UI 렌더링

또는 `Stac.fromNetwork` 메서드를 사용하여 서버에 저장된 JSON 파일에서 UI를 로드하고 렌더링할 수 있습니다:

```dart
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'StacDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Stac.fromNetwork(
      request: StacNetworkRequest(
        url: 'https://example.com/ui.json',
      ),
      context: context,
    ),
  );
}
```

이러한 단계를 따라 Flutter 프로젝트에 Stac을 효과적으로 통합하고 동적 server-driven UI 구축을 시작할 수 있습니다.

## 예제: Stac Form 화면

Flutter 앱에서 Stac을 사용하여 폼 화면을 렌더링하는 방법의 예제입니다:

### JSON 데이터

```json
{
  "type": "scaffold",
  "appBar": {
    "type": "appBar",
    "title": {
      "type": "text",
      "data": "Text Field",
      "style": {
        "color": "#ffffff",
        "fontSize": 21
      }
    },
    "backgroundColor": "#4D00E9"
  },
  "backgroundColor": "#ffffff",
  "body": {
    "type": "singleChildScrollView",
    "child": {
      "type": "container",
      "padding": {
        "left": 12,
        "right": 12,
        "top": 12,
        "bottom": 12
      },
      "child": {
        "type": "column",
        "mainAxisAlignment": "center",
        "crossAxisAlignment": "center",
        "children": [
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": false,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "hintText": "What do people call you?",
              "filled": true,
              "icon": {
                "type": "icon",
                "iconType": "cupertino",
                "icon": "person_solid",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Name*",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": false,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "hintText": "Where can we reach you?",
              "filled": true,
              "icon": {
                "type": "icon",
                "iconType": "cupertino",
                "icon": "phone_solid",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Phone number*",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": false,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "hintText": "Your email address",
              "filled": true,
              "icon": {
                "type": "icon",
                "iconType": "material",
                "icon": "email",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Email",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "sizedBox",
            "height": 100,
            "child": {
              "type": "textField",
              "expands": true,
              "cursorColor": "#FC3F1B",
              "style": {
                "color": "#000000"
              },
              "decoration": {
                "filled": true,
                "hintStyle": {
                  "color": "#797979"
                },
                "labelText": "Life story",
                "fillColor": "#F2F2F2"
              },
              "readOnly": false,
              "enabled": true
            }
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": true,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "filled": true,
              "suffixIcon": {
                "type": "icon",
                "iconType": "cupertino",
                "icon": "eye",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Password*",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": true,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "filled": true,
              "suffixIcon": {
                "type": "icon",
                "iconType": "cupertino",
                "icon": "eye",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Re-type password*",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 48
          },
          {
            "type": "elevatedButton",
            "child": {
              "type": "text",
              "data": "Submit"
            },
            "style": {
              "backgroundColor": "#4D00E9",
              "padding": {
                "top": 8,
                "left": 12,
                "right": 12,
                "bottom": 8
              }
            },
            "onPressed": {}
          }
        ]
      }
    }
  }
}
```
### Flutter 코드

```dart
import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StacApp(
      title: 'Stac Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stac.fromNetwork(
        StacNetworkRequest(
          url: _url,
          method: Method.get,
        ),
      ),
    );
  }
}
```

단 몇 줄의 코드로 SDUI 앱이 실행됩니다.

<img src="/img/form_screen_image.png" alt="Form screen example"/>

더 자세한 예제와 고급 사용법은 [Stac Gallery App](https://github.com/StacDev/stac/tree/dev/examples/stac_gallery)을 참조하세요.
