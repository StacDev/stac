# AspectRatio

Stac aspectRatio를 사용하면 JSON을 통해 Flutter AspectRatio 위젯을 생성할 수 있습니다.
Flutter의 aspectRatio 위젯에 대해 더 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/AspectRatio-class.html)를 참조하세요.

---

## 속성

| 속성      | 타입                    | 설명                                                                                      |
|---------------|-------------------------|--------------------------------------------------------------------------------------------------|
| `aspectRatio` | `double`                | 자식 위젯의 원하는 너비-높이 비율입니다. 기본값은 `1` (정사각형 비율)입니다. |
| `child`       | `Map<String, dynamic>?` | 지정된 비율을 따라야 하는 자식 위젯으로, JSON 객체로 표현됩니다. |

---

## 예제 JSON

```json
{
  "type": "aspectRatio",
  "aspectRatio": 1.33,
  "child": {
    "type": "container",
    "color": "#FF5733",
    "width": 100,
    "height": 100
  }
}
```
