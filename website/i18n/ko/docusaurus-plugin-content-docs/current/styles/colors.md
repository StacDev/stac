# Color

텍스트 색상, 배경 색상, 테두리 색상 등 다양한 Flutter 위젯에 적용할 수 있는 `Color`입니다. [공식 문서](https://api.flutter.dev/flutter/material/Colors-class.html).

## 색상 타입

세 가지 다른 타입의 색상이 있습니다. Theme 색상, Hex 색상, Name 색상.

### Theme 색상

Theme 색상은 테마에서 정의하는 테마 기반 색상입니다.

다음은 theme 색상입니다 [`primary`, `onPrimary`,`primaryContainer`, `onPrimaryContainer`, `secondary`, `onSecondary`, `secondaryContainer`, `onSecondaryContainer`, `tertiary`, `onTertiary`, `tertiaryContainer`, `onTertiaryContainer`, `error`, `onError`, `errorContainer`, `onErrorContainer`, `background`, `onBackground`, `surface`, `onSurface`, `surfaceVariant`, `onSurfaceVariant`, `outline`, `outlineVariant`, `shadow`, `scrim`, `inverseSurface`, `onInverseSurface`, `inversePrimary`, `surfaceTint`, `scaffoldBackgroundColor`].

### Hex 색상

Hex 색상을 사용하면 사용자 정의 hex 값을 정의할 수 있습니다. 6자리 Hex 코드(`#FF0000`)이거나 8자리 Hex 코드(`#88FF0000`)일 수 있으며, 처음 2자리는 불투명도를 나타냅니다.

### Name 색상

Name 색상을 사용하면 색상 이름과 검은색 및 흰색 색상의 불투명도를 사용하여 색상을 제공할 수 있습니다.

다음은 name 색상입니다 [`amber`, `amberAccent`, `black`, `blue`, `blueAccent`, `blueGrey`, `brown`, `cyan`, `cyanAccent`, `deepOrange`, `deepOrangeAccent`, `deepPurple`, `deepPurpleAccent`, `green`, `greenAccent`, `grey`, `indigo`, `indigoAccent`, `lightBlue`, `lightBlueAccent`, `lightGreen`, `lightGreenAccent`, `lime`, `limeAccent`, `orange`, `orangeAccent`, `pink`, `pinkAccent`, `purple`, `purpleAccent`, `red`, `redAccent`, `teal`, `tealAccent`, `transparent`, `white`, `yellow`, `yellowAccent`].

다음은 흰색의 불투명도입니다 [`10`, `12`, `24`, `30`, `38`, `54`, `60`, `70`].

다음은 검은색의 불투명도입니다 [`12`, `26`, `38`, `45`, `54`, `87`].

## 예제

### 예제 1: Theme 색상
```json
{
  "type": "text",
  "data": "Hello World!",
  "style": {
    "color": "primary"
  }
}
```

### 예제 2: Hex 색상
```json
{
  "type": "text",
  "data": "Hello World!",
  "style": {
    "color": "#000000"
  }
}
```

### 예제 3: Name 색상
```json
{
  "type": "text",
  "data": "Hello World!",
  "style": {
    "color": "black45"
  }
}
```
