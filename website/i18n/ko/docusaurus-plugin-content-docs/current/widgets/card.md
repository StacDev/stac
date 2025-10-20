# Card

Stac Card를 사용하면 JSON을 통해 Flutter Card 위젯을 구축할 수 있습니다.
Flutter의 Card 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/Card-class.html)를 참조하세요.

## Properties

| Property           | Type                    | Description                                                                 |
|--------------------|-------------------------|-----------------------------------------------------------------------------|
| color              | `String?`               | 카드의 배경 색상입니다.                                           |
| shadowColor        | `String?`               | 카드 그림자의 색상입니다.                                             |
| surfaceTintColor   | `String?`               | 카드 표면 틴트의 색상입니다.                                       |
| elevation          | `double?`               | 이 카드를 배치할 z-좌표입니다.                               |
| shape              | `StacShapeBorder?`     | 카드 테두리의 모양입니다.                                             |
| borderOnForeground | `bool`                  | 자식 앞에 테두리를 그릴지 여부입니다. 기본값은 `true`입니다.      |
| margin             | `StacEdgeInsets?`      | 카드를 둘러싼 빈 공간입니다.                                    |
| clipBehavior       | `Clip?`                 | 이 옵션에 따라 콘텐츠가 클리핑되거나 되지 않습니다.              |
| child              | `Map<String, dynamic>?` | 트리에서 이 위젯 아래에 있는 위젯입니다.                                   |
| semanticContainer  | `bool`                  | 이 카드가 의미적 컨테이너인지 여부입니다. 기본값은 `true`입니다.              |

## Example JSON

```json
{
  "type": "card",
  "color": "#FFFFFF",
  "shadowColor": "#000000",
  "surfaceTintColor": "#FF0000",
  "elevation": 5.0,
  "shape": {
    "type": "roundedRectangle",
    "borderRadius": 10.0
  },
  "borderOnForeground": true,
  "margin": {
    "left": 10,
    "top": 20,
    "right": 10,
    "bottom": 20
  },
  "clipBehavior": "antiAlias",
  "child": {
    "type": "text",
    "data": "This is a card."
  },
  "semanticContainer": true
}
```
