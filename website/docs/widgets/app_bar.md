# AppBar

The Stac AppBar allows you to build a Flutter app bar widget using JSON.
To know more about the app bar widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/AppBar-class.html).

## Properties

| Property               | Type                         | Description                                                                         |
|------------------------|------------------------------|-------------------------------------------------------------------------------------|
| leading                | `Map<String, dynamic>?`      | The leading widget before the title.                                                |
| title                  | `Map<String, dynamic>?`      | The title widget.                                                                   |
| titleTextStyle         | `StacTextStyle?`            | The text style for the title.                                                       |
| toolbarTextStyle       | `StacTextStyle?`            | The text style for the toolbar.                                                     |
| shadowColor            | `String?`                    | The color of the shadow below the app bar.                                          |
| backgroundColor        | `String?`                    | The background color of the app bar.                                                |
| foregroundColor        | `String?`                    | The color of the app bar's foreground elements.                                     |
| surfaceTintColor       | `String?`                    | The surface tint color of the app bar.                                              |
| actions                | `List<Map<String, dynamic>>` | The list of widgets to display in a row after the title. Defaults to an empty list. |
| bottom                 | `Map<String, dynamic>?`      | The bottom widget of the app bar.                                                   |
| titleSpacing           | `double?`                    | The spacing around the title.                                                       |
| toolbarOpacity         | `double`                     | The opacity of the toolbar. Defaults to `1.0`.                                      |
| bottomOpacity          | `double`                     | The opacity of the bottom widget. Defaults to `1.0`.                                |
| toolbarHeight          | `double?`                    | The height of the toolbar.                                                          |
| leadingWidth           | `double?`                    | The width of the leading widget.                                                    |
| primary                | `bool`                       | Whether this app bar is the primary app bar for the scaffold. Defaults to `true`.   |
| centerTitle            | `bool?`                      | Whether the title should be centered.                                               |
| elevation              | `double?`                    | The elevation of the app bar.                                                       |
| scrolledUnderElevation | `double?`                    | The elevation of the app bar when it is scrolled under.                             |

## Example JSON

```json
{
  "type": "appBar",
  "title": {
    "type": "text",
    "data": "App Bar Title"
  },
  "backgroundColor": "#FFFFFF",
  "foregroundColor": "#000000",
  "actions": [
    {
      "type": "iconButton",
      "icon": {
        "type": "icon",
        "icon": "search"
      }
    },
    {
      "type": "iconButton",
      "icon": {
        "type": "icon",
        "icon": "settings"
      }
    }
  ]
}
```