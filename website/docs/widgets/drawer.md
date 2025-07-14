# Drawer

The Stac Drawer allows you to build a Flutter Drawer widget using JSON.
To know more about the Drawer widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Drawer-class.html).

## Properties

| Property         | Type                | Description                                                        |
|------------------|---------------------|--------------------------------------------------------------------|
| backgroundColor  | `String?`           | The background color of the drawer.                                |
| elevation        | `double?`           | The z-coordinate at which to place this drawer.                    |
| shadowColor      | `String?`           | The color of the drawer's shadow.                                  |
| surfaceTintColor | `String?`           | The surface tint color of the drawer.                              |
| shape            | `StacShapeBorder?`  | The shape of the drawer.                                           |
| width            | `double?`           | The width of the drawer.                                           |
| child            | `Map<String, dynamic>?` | The widget below this widget in the tree.                     |
| semanticLabel    | `String?`           | The semantic label for the drawer.                                 |
| clipBehavior     | `Clip?`             | The clip behavior of the drawer.                                   |

## Example JSON

```json
{
  "type": "drawer",
  "backgroundColor": "#FFFFFF",
  "elevation": 16.0,
  "shadowColor": "#000000",
  "surfaceTintColor": "#F2F2F2",
  "shape": {
    "type": "roundedRectangleBorder",
    "borderRadius": 16
  },
  "width": 304.0,
  "semanticLabel": "Navigation Drawer",
  "clipBehavior": "antiAlias",
  "child": {
    "type": "column",
    "children": [
      {
        "type": "text",
        "data": "Drawer Header"
      },
      {
        "type": "text",
        "data": "Item 1"
      },
      {
        "type": "text",
        "data": "Item 2"
      }
    ]
  }
}
``` 