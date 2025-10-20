# FractionallySizedBox

Stac FractionallySizedBox를 사용하면 JSON을 사용하여 Flutter fractionally sized box widget을 빌드할 수 있습니다.
Flutter의 fractionally sized box widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/FractionallySizedBox-class.html)를 참조하세요.

## Properties

| Property     | Type                    | Description                                              |
|--------------|-------------------------|----------------------------------------------------------|
| alignment    | `StacAlignment?`       | fractionally sized box 내에서 child의 정렬 방식입니다.             |
| widthFactor  | `double?`               | 사용 가능한 너비 중 사용할 비율입니다.                                   |
| heightFactor | `double?`               | 사용 가능한 높이 중 사용할 비율입니다.                                   |
| child        | `Map<String, dynamic>?` | fractionally sized box 내부에 표시할 widget입니다.               |

## Example JSON

```json
{
  "type": "fractionallySizedBox",
  "alignment": "center",
  "widthFactor": 0.5,
  "heightFactor": 0.5,
  "child": {
    "type": "container",
    "color": "#FF5733",
    "child": {
      "type": "text",
      "data": "Hello, World!"
    }
  }
}
```
