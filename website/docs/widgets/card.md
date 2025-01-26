# Card

The Mirai Card allows you to build a Flutter Card widget using JSON.
To know more about the Card widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Card-class.html).

## Properties

| Property           | Type                    | Description                                                                 |
|--------------------|-------------------------|-----------------------------------------------------------------------------|
| color              | `String?`               | The background color of the card.                                           |
| shadowColor        | `String?`               | The color of the card's shadow.                                             |
| surfaceTintColor   | `String?`               | The color of the card's surface tint.                                       |
| elevation          | `double?`               | The z-coordinate at which to place this card.                               |
| shape              | `MiraiShapeBorder?`     | The shape of the card's border.                                             |
| borderOnForeground | `bool`                  | Whether to paint the border in front of the child. Defaults to `true`.      |
| margin             | `MiraiEdgeInsets?`      | The empty space that surrounds the card.                                    |
| clipBehavior       | `Clip?`                 | The content will be clipped (or not) according to this option.              |
| child              | `Map<String, dynamic>?` | The widget below this widget in the tree.                                   |
| semanticContainer  | `bool`                  | Whether this card is a semantic container. Defaults to `true`.              |

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