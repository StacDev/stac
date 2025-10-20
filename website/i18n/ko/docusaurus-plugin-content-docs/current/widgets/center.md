# Center

Stac Center를 사용하면 JSON을 통해 Flutter center 위젯을 구축할 수 있습니다.
Flutter의 center 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Center-class.html)를 참조하세요.

## 속성

| Property     | Type                    | Description                                         |
|--------------|-------------------------|-----------------------------------------------------|
| widthFactor  | `double?`               | 자식의 너비에 곱할 요소입니다.  |
| heightFactor | `double?`               | 자식의 높이에 곱할 요소입니다. |
| child        | `Map<String, dynamic>?` | center 안에 표시할 위젯입니다.            |

## 예제 JSON

```json
{
  "type": "center",
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```
