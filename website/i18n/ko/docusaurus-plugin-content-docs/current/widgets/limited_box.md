# Limited Box

Stac LimitedBox를 사용하면 JSON을 통해 Flutter LimitedBox 위젯을 생성할 수 있습니다.
Flutter의 LimitedBox 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/LimitedBox-class.html)를 참조하세요.

## 속성

| Property    | Type                    | Description                                                                                          |
|-------------|-------------------------|------------------------------------------------------------------------------------------------------|
| `maxHeight` | `double`                | 부모의 높이가 무제한일 때 자식의 최대 높이입니다. 기본값은 `double.infinity`입니다. |
| `maxWidth`  | `double`                | 부모의 너비가 무제한일 때 자식의 최대 너비입니다. 기본값은 `double.infinity`입니다.   |
| `child`     | `Map<String, dynamic>?` | JSON 객체로 표현된 자식 위젯입니다.                                                       |

---

## 예제 JSON

### Example 1: Limited Box with Default Constraints

```json
{
  "type": "limitedBox",
  "child": {
    "type": "container",
    "width": 100,
    "height": 100,
    "color": "#FF0000"
  }
}
```

### Example 2: Limited Box with Custom Constraints

```json
{
  "type": "limitedBox",
  "maxHeight": 200.0,
  "maxWidth": 300.0,
  "child": {
    "type": "text",
    "data": "Hello, World! from Limited Box",
    "style": {
      "fontSize": 16,
      "color": "#000000"
    }
  }
}
```
