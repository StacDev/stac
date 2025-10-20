# Vertical Divider

Stac Vertical Divider를 사용하면 JSON을 사용하여 Flutter vertical divider 위젯을 빌드할 수 있습니다.
Flutter의 vertical divider 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/VerticalDivider-class.html)를 참조하세요.

## 속성

| Property   | Type         | Description                                        |
|------------|--------------|----------------------------------------------------|
| width      | `StacDouble?`  | 구분선의 너비입니다.                          |
| thickness  | `StacDouble?`  | 구분선의 두께입니다.                      |
| indent     | `StacDouble?`  | 구분선을 들여쓸 공간의 양입니다.         |
| endIndent  | `StacDouble?`  | 끝에서 구분선을 들여쓸 공간의 양입니다. |
| color      | `String?`    | 구분선의 색상입니다.                          |

## 예제 JSON

```json
{
  "type": "verticalDivider",
  "width": 20,
  "thickness": 4,
  "indent": 10,
  "endIndent": 10,
  "color": "#21814C"
}
```
