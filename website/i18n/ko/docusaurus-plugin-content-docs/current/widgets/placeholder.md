# Placeholder

Stac `Placeholder` 위젯을 사용하면 JSON을 사용하여 Flutter Placeholder 위젯을 빌드할 수 있습니다.
이는 Flutter UI에서 플레이스홀더 역할을 하는 상자를 그리는 데 사용됩니다. 일반적으로 위젯이 아직 추가되지 않은 영역을 나타내거나 레이아웃 제약을 디버깅하는 데 사용됩니다.

`Placeholder` 위젯에 대해 자세히 알아보려면 [공식 Flutter 문서](https://api.flutter.dev/flutter/widgets/Placeholder-class.html)를 참조하세요.

---

## Properties

| Property         | Type                    | Description                                                                                             |
|------------------|-------------------------|---------------------------------------------------------------------------------------------------------|
| `color`          | `String?`               | 자식 뒤에 칠할 16진수 색상입니다. 기본값은 `#455A64` (Blue Grey 700)입니다.                         |
| `strokeWidth`    | `double?`               | 플레이스홀더 상자를 그리는 데 사용되는 선의 너비입니다. 기본값은 `2.0`입니다.                             |
| `fallbackWidth`  | `double?`               | 플레이스홀더가 무한 너비 상황에 있을 때 사용할 너비입니다. 기본값은 `400.0`입니다.   |
| `fallbackHeight` | `double?`               | 플레이스홀더가 무한 높이 상황에 있을 때 사용할 높이입니다. 기본값은 `400.0`입니다. |
| `child`          | `Map<String, dynamic>?` | 플레이스홀더 상자 내부에 표시될 위젯입니다.                                                  |

---

## Example JSON

```json
{
  "type": "placeholder",
  "color": "#455A64",
  "strokeWidth": 2.0,
  "fallbackWidth": 400.0,
  "fallbackHeight": 400.0
}
```
