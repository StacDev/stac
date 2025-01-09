# Padding

Mirai padding allows you to build the Flutter padding widget using JSON. 
To know more about the padding widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Padding-class.html).

## Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| padding | `MiraiEdgeInsets` | The amount of space by which to inset the child. |
| child | `Map<String,dynamic>` | The widget below this widget in the tree. |

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
