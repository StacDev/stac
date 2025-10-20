# Align

Stac align을 사용하면 JSON을 통해 Flutter align 위젯을 구성할 수 있습니다.
Flutter의 align 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/Align-class.html)를 참조하세요.

## 속성

| 속성         | 타입                  | 설명                                                                   |
|--------------|-----------------------|------------------------------------------------------------------------|
| alignment    | `StacAlignment`      | 자식 요소를 정렬하는 방법입니다.                                       |
| widthFactor  | `double`              | null이 아닌 경우, 너비를 자식의 너비에 이 인수를 곱한 값으로 설정합니다.   |
| heightFactor | `double`              | null이 아닌 경우, 높이를 자식의 높이에 이 인수를 곱한 값으로 설정합니다.   |
| child        | `Map<String,dynamic>` | 트리에서 이 위젯 아래에 있는 위젯입니다.                                |

## 예제

```json
{
  "type": "align",
  "alignment": "topEnd",
  "child": {
    "type": "container",
    "color": "#FC5632",
    "clipBehavior": "hardEdge",
    "height": 250,
    "width": 200,
    "child": {
      "type": "align",
      "alignment": "bottomCenter",
      "child": {
        "type": "text",
        "data": "Flutter",
        "style": {
          "fontSize": 23,
          "fontWeight": "w600"
        }
      }
    }
  }
}
```