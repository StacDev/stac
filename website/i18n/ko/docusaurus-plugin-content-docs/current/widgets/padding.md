# Padding

Stac padding을 사용하면 JSON을 사용하여 Flutter padding 위젯을 빌드할 수 있습니다.
Flutter의 padding 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Padding-class.html)를 참조하세요.

## Properties

| Property | Type                  | Description                                                                                                                                                                                                             |
|----------|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| padding  | `StacEdgeInsets`     | 자식을 삽입할 공간의 양입니다. 예시: 균일한 패딩을 위한 `"padding": 12`, 특정 측면을 위한 `"padding": {"left": 0, "right": 0}`, 또는 왼쪽, 위, 오른쪽, 아래를 위한 `{"padding": [8, 12, 8, 12]}`. |
| child    | `Map<String,dynamic>` | 트리에서 이 위젯 아래의 위젯입니다.                                                                                                                                                                               |

## Example JSON

```json
{
  "type": "padding",
  "padding": {
    "left": 0,
    "right": 0
  },
  "child": {
    "type": "container",
    "color": "#672BFF",
    "clipBehavior": "hardEdge",
    "height": 75,
    "width": 700
  }
}
```
