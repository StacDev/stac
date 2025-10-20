# ColoredBox

Stac Colored Box를 사용하면 JSON을 통해 Flutter colored box 위젯을 구축할 수 있습니다.
Flutter의 colored box 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html)를 참조하세요.

## 속성

| Property | Type                    | Description                                      |
|----------|-------------------------|--------------------------------------------------|
| color    | `String`                | 박스의 배경을 칠할 색상입니다.    |
| child    | `Map<String, dynamic>?` | colored box 안에 표시할 위젯입니다.    |

## 예제 JSON

```json
{
  "type": "coloredBox",
  "color": "#FF0000",
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```
