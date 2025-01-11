# Padding

Mirai padding allows you to build the Flutter padding widget using JSON. 
To know more about the padding widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Padding-class.html).

## Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| padding | `MiraiEdgeInsets` | The amount of space by which to inset the child. Examples: `"padding": 12` for uniform padding, `"padding": {"left": 0, "right": 0}` for specific sides, or `{"padding": [8, 12, 8, 12]}` for left, top, right, bottom. |
| child   | `Map<String,dynamic>` | The widget below this widget in the tree. |

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
