# Opacity

Mirai opacity allows you to build the Flutter Opacity widget using JSON.
To know more about the Slider widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Opacity-class.html).

## Properties

| Property | Type                   | Description                                                                                          |
| -------- | ---------------------- | ---------------------------------------------------------------------------------------------------- |
| opacity  | `double`               | The opacity value between 0.0 and 1.0 which controls the visibility of the child, with 0.0 being fully transparent (invisible) and 1.0 being fully opaque (visible).                                                                                          |
| child    | `Map<String, dynamic>` | The child widget of the opacity.                                                                     |

## Example JSON

```json
{
  "type": "scaffold",
  "appBar": {
    "type": "appBar",
    "title": {
      "type": "text",
      "data": "Opacity"
    }
  },
  "body": {
    "type": "center",
    "child": {
      "type": "opacity",
      "opacity": 0.5,
      "child": {
        "type": "text",
        "data": "Opacity Widget",
        "style": {
          "fontSize": 23,
          "fontWeight": "w600"
        }
      }
    }
  }
}
```
