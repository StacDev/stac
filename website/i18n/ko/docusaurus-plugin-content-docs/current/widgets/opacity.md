# Opacity

Stac opacity를 사용하면 JSON을 사용하여 Flutter Opacity 위젯을 빌드할 수 있습니다.
Flutter의 Opacity 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Opacity-class.html)를 참조하세요.

## 속성

| Property | Type                   | Description                                                                                                                                                          |
|----------|------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| opacity  | `double`               | 자식의 가시성을 제어하는 0.0과 1.0 사이의 불투명도 값으로, 0.0은 완전히 투명(보이지 않음)이고 1.0은 완전히 불투명(보임)입니다. |
| child    | `Map<String, dynamic>` | opacity의 자식 위젯입니다.                                                                                                                                     |

## 예제 JSON

```json
{
  "type": "scaffold",
  "appBar": {
    "type": "appBar",
    "title": {
      "type": "text",
      "data": "Opacity"
    }
  },
  "body": {
    "type": "center",
    "child": {
      "type": "opacity",
      "opacity": 0.5,
      "child": {
        "type": "text",
        "data": "Opacity Widget",
        "style": {
          "fontSize": 23,
          "fontWeight": "w600"
        }
      }
    }
  }
}
```
