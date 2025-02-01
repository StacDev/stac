# Chip

The Stac Chip allows you to build a Flutter Chip widget using JSON.
To know more about the Chip widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Chip-class.html).

## Properties

| Property                   | Type                           | Description                                                                                    |
|----------------------------|--------------------------------|------------------------------------------------------------------------------------------------|
| avatar                     | `Map<String, dynamic>?`        | The widget to display prior to the chip's label.                                               |
| label                      | `Map<String, dynamic>`         | The primary content of the chip.                                                               |
| labelStyle                 | `StacTextStyle?`              | The style to use for the label.                                                                |
| labelPadding               | `StacEdgeInsets?`             | The padding around the label.                                                                  |
| deleteIcon                 | `Map<String, dynamic>?`        | The widget to display as the chip's delete icon.                                               |
| onDeleted                  | `Map<String, dynamic>?`        | The callback that is called when the delete icon is tapped.                                    |
| deleteIconColor            | `String?`                      | The color of the delete icon.                                                                  |
| deleteButtonTooltipMessage | `String?`                      | The message to display in the tooltip for the delete icon.                                     |
| side                       | `StacBorderSide?`             | The border to display around the chip.                                                         |
| shape                      | `StacRoundedRectangleBorder?` | The shape of the chip's border.                                                                |
| clipBehavior               | `Clip`                         | The clip behavior of the chip. Defaults to `Clip.none`.                                        |
| autofocus                  | `bool`                         | Whether this chip should focus itself if nothing else is already focused. Defaults to `false`. |
| color                      | `String?`                      | The color of the chip.                                                                         |
| backgroundColor            | `String?`                      | The background color of the chip.                                                              |
| padding                    | `StacEdgeInsets?`             | The padding around the chip.                                                                   |
| visualDensity              | `StacVisualDensity?`          | The visual density of the chip.                                                                |
| materialTapTargetSize      | `MaterialTapTargetSize?`       | Configures the minimum size of the tap target.                                                 |
| elevation                  | `double?`                      | The elevation of the chip.                                                                     |
| shadowColor                | `String?`                      | The color of the chip's shadow.                                                                |
| surfaceTintColor           | `String?`                      | The color of the chip's surface tint.                                                          |
| iconTheme                  | `StacIconThemeData?`          | The theme for icons in the chip.                                                               |
| avatarBoxConstraints       | `StacBoxConstraints?`         | The constraints for the avatar.                                                                |
| deleteIconBoxConstraints   | `StacBoxConstraints?`         | The constraints for the delete icon.                                                           |

## Example JSON

```json
{
  "type": "chip",
  "avatar": {
    "type": "circleAvatar",
    "backgroundColor": "#FF0000",
    "child": {
      "type": "text",
      "data": "A"
    }
  },
  "label": {
    "type": "text",
    "data": "Chip Label"
  },
  "labelStyle": {
    "color": "#000000",
    "fontSize": 14
  },
  "labelPadding": {
    "left": 8,
    "top": 4,
    "right": 8,
    "bottom": 4
  },
  "deleteIcon": {
    "type": "icon",
    "icon": "delete"
  },
  "deleteIconColor": "#FF0000",
  "deleteButtonTooltipMessage": "Delete",
  "side": {
    "color": "#000000",
    "width": 1.0
  },
  "shape": {
    "type": "roundedRectangle",
    "borderRadius": 8.0
  },
  "clipBehavior": "antiAlias",
  "autofocus": false,
  "color": "#FFFFFF",
  "backgroundColor": "#EEEEEE",
  "padding": {
    "left": 8,
    "top": 4,
    "right": 8,
    "bottom": 4
  },
  "visualDensity": {
    "horizontal": 0.0,
    "vertical": 0.0
  },
  "materialTapTargetSize": "padded",
  "elevation": 2.0,
  "shadowColor": "#000000",
  "surfaceTintColor": "#FFFFFF",
  "iconTheme": {
    "color": "#000000",
    "size": 24.0
  },
  "avatarBoxConstraints": {
    "minWidth": 24.0,
    "minHeight": 24.0
  },
  "deleteIconBoxConstraints": {
    "minWidth": 24.0,
    "minHeight": 24.0
  }
}
```