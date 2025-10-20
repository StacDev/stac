# ClipOval

Stac ClipOval을 사용하면 JSON을 통해 Flutter ClipOval 위젯을 구축할 수 있습니다. 이 위젯은 타원형 모양을 사용하여 자식을 클리핑하며, 원형 또는 타원형 UI 요소를 만드는 데 유용합니다.
Flutter의 ClipOval 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/ClipOval-class.html)를 참조하세요.

## Properties

| Property     | Type                   | Default     | Description                                                 |
|--------------|------------------------|-------------|-------------------------------------------------------------|
| clipBehavior | `Clip`                 | `antiAlias` | 콘텐츠가 타원을 벗어날 때의 클리핑 동작입니다. |
| child        | `Map<String, dynamic>` | Required    | 타원형 모양으로 클리핑할 위젯입니다.                      |


## Example JSON

```json
{
  "type": "clipOval",
  "clipBehavior": "antiAlias",
  "child": {
    "type": "image",
    "src": "https://placehold.co/600x400",
    "width": 200,
    "height": 200,
    "fit": "cover"
  }
}
```
