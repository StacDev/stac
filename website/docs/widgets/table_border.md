# Table Border

MiraiTableBorder allows you to define the Flutter TableBorder class using JSON.
To know more about the TableBorder class in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/rendering/TableBorder-class.html).

## Properties

| Property         | Type              | Description                                                                                 |
| ---------------- | ----------------- | ------------------------------------------------------------------------------------------- |
| top              | `MiraiBorderSide` | Defines the top border of the table. See [`MiraiBorderSide`](./border_side).                |
| right            | `MiraiBorderSide` | Defines the right border of the table. See  [`MiraiBorderSide`](./border_side).             |
| bottom           | `MiraiBorderSide` | Defines the bottom border of the table. See  [`MiraiBorderSide`](./border_side).            |
| left             | `MiraiBorderSide` | Defines the left border of the table. See  [`MiraiBorderSide`](./border_side).              |
| horizontalInside | `MiraiBorderSide` | Defines the inner horizontal borders of the table. See  [`MiraiBorderSide`](./border_side). |
| verticalInside   | `MiraiBorderSide` | Defines the inner vertical borders of the table. See  [`MiraiBorderSide`](./border_side).   |
| borderRadius     | `int`             | Defines the border radius to be used while rendering table corners.                         |

## Example

```json
{
  "border": {
    "type": "tableBorder",
    "top": {
      "color": "#428AF5",
      "width": 1.0
    },
    "right": {
      "color": "#428AF5",
      "width": 1.0
    },
    "bottom": {
      "color": "#428AF5",
      "width": 1.0
    },
    "left": {
      "color": "#428AF5",
      "width": 1.0
    },
    "borderRadius": 16
  },
}
```