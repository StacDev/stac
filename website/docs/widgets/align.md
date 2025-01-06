# Align

Mirai align allows you to build the Flutter align widget using JSON.
To know more about the align widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Align-class.html).

## Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| alignment | `MiraiAlignment` | How to align the child. |
| widthFactor | `double` | If non-null, sets its width to the child's width multiplied by this factor. |
| heightFactor | `double` | If non-null, sets its height to the child's height multiplied by this factor. |
| child | `Map<String,dynamic>` | The widget below this widget in the tree. |

## Example

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