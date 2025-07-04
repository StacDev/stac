# Vertical Divider

The Stac Vertical Divider allows you to build a Flutter vertical divider widget using JSON.
To know more about the vertical divider widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/VerticalDivider-class.html).

## Properties

| Property   | Type         | Description                                        |
|------------|--------------|----------------------------------------------------|
| width      | `StacDouble?`  | The width of the divider. Defaults to `1.0`.       |
| thickness  | `StacDouble?`  | The thickness of the divider. Defaults to `1.0`.   |
| indent     | `StacDouble?`  | The amount of space to indent the divider.         |
| endIndent  | `StacDouble?`  | The amount of space to indent the divider at the end. |
| color      | `String?`    | The color of the divider.                          |
| height     | `StacDouble?`  | The height of the divider.                         |

## Example JSON

```json
{
  "type": "verticalDivider",
  "width": {
    "value": 2.0
  },
  "thickness": {
    "value": 2.0
  },
  "indent": {
    "value": 10.0
  },
  "endIndent": {
    "value": 10.0
  },
  "color": "#FF0000"
}
```
