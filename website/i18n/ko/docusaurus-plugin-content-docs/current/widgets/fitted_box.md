# FittedBox

Stac FittedBox를 사용하면 JSON을 통해 Flutter FittedBox widget을 구성할 수 있습니다.
Flutter의 FittedBox widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/FittedBox-class.html)를 참조하세요.

---

## 속성

| 속성            | 타입                        | 설명                                                                       |
|----------------|-----------------------------|---------------------------------------------------------------------------|
| `fit`          | `BoxFit`                    | child가 박스 내에 어떻게 맞춰져야 하는지를 정의합니다. 기본값은 `BoxFit.contain`입니다.  |
| `alignment`    | `StacAlignmentDirectional` | 박스 내에서 child를 정렬합니다. 기본값은 `StacAlignmentDirectional.center`입니다.  |
| `clipBehavior` | `Clip`                      | 콘텐츠를 자를지 여부와 방법을 지정합니다. 기본값은 `Clip.none`입니다.                   |
| `child`        | `Map<String, dynamic>?`     | 위치 지정 및 크기 조정될 child widget으로, JSON 객체로 표현됩니다.                   |

---

## 예제 JSON

```json
{
  "type": "fittedBox",
  "fit": "contain",
  "alignment": "center",
  "child": {
    "type": "text",
    "data": "Hello, World!",
    "style": {
      "fontSize": 20,
      "color": "#000000"
    }
  }
}
```
