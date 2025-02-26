# SliverAppBar

The Stac SliverAppBar allows you to build a Flutter sliver app bar widget using JSON.
To know more about the app bar widget in Flutter, refer to
the [official documentation](https://api.flutter.dev/flutter/material/SliverAppBar-class.html).

## Properties

| Property               | Type                         | Description                                                                                     |
|------------------------|------------------------------|-------------------------------------------------------------------------------------------------|
| leading                | `Map<String, dynamic>?`      | The leading widget before the title.                                                            |
| title                  | `Map<String, dynamic>?`      | The title widget.                                                                               |
| titleTextStyle         | `StacTextStyle?`             | The text style for the title.                                                                   |
| toolbarTextStyle       | `StacTextStyle?`             | The text style for the toolbar.                                                                 |
| shadowColor            | `String?`                    | The color of the shadow below the app bar.                                                      |
| backgroundColor        | `String?`                    | The background color of the app bar.                                                            |
| foregroundColor        | `String?`                    | The color of the app bar's foreground elements.                                                 |
| surfaceTintColor       | `String?`                    | The surface tint color of the app bar.                                                          |
| actions                | `List<Map<String, dynamic>>` | The list of widgets to display in a row after the title. Defaults to an empty list.             |
| bottom                 | `Map<String, dynamic>?`      | The bottom widget of the app bar.                                                               |
| titleSpacing           | `double?`                    | The spacing around the title.                                                                   |
| toolbarOpacity         | `double`                     | The opacity of the toolbar. Defaults to `1.0`.                                                  |
| bottomOpacity          | `double`                     | The opacity of the bottom widget. Defaults to `1.0`.                                            |
| toolbarHeight          | `double?`                    | The height of the toolbar.                                                                      |
| leadingWidth           | `double?`                    | The width of the leading widget.                                                                |
| primary                | `bool`                       | Whether this app bar is the primary app bar for the scaffold. Defaults to `true`.               |
| centerTitle            | `bool?`                      | Whether the title should be centered.                                                           |
| elevation              | `double?`                    | The elevation of the app bar.                                                                   |
| scrolledUnderElevation | `double?`                    | The elevation of the app bar when it is scrolled under.                                         |
| flexibleSpace          | `Map<String, dynamic>?`      | This widget is stacked behind the toolbar and the tab bar.                                      |
| expandedHeight         | `double?`                    | The size of the app bar when it is fully expanded.                                              |
| collapsedHeight        | `double?`                    | The height of the app bar when it is collapsed.                                                 |
| titleSpacing           | `double?`                    | The spacing around title content on the horizontal axis.                                        |
| floating               | `bool`                       | Makes the app bar visible as soon as the user scrolls towards the app bar. Defaults to `false`. |
| pinned                 | `bool`                       | Makes the app bar visible at the start of the scroll view. Defaults to `true`.                  |
| snap                   | `bool`                       | Controls the snap behaviour of AppBar. Defaults to `false`.                                     |
| stretch                | `bool`                       | Whether the app bar should stretch to fill the over-scroll area. Defaults to `false`.           |
| stretchTriggerOffset   | `double?`                    | The offset of overscroll required to activate `onStretchTrigger`.                               |
| shape                  | `Map<String, dynamic>?`      | The shape of the app bar's Material as well as its shadow.                                      |
| iconTheme              | `Map<String, dynamic>?`      | The color, opacity, and size to use for toolbar icons.                                          |
| actionsIconTheme       | `Map<String, dynamic>?`      | The color, opacity, and size to use for the icons that appear in the app bar's actions.         |
| actionsPadding         | `Map<String, dynamic>?`      | The padding between the actions and the end of the AppBar.                                      |

## Example JSON

```json
{
  "type": "sliverAppBar",
  "title": {
    "type": "text",
    "data": "SliverAppBar"
  },
  "leading": {
    "type": "iconButton",
    "icon": {
      "type": "icon",
      "iconType": "material",
      "icon": "menu"
    },
    "onPressed": {}
  },
  "backgroundColor": "primary",
  "actions": [
    {
      "type": "iconButton",
      "icon": {
        "type": "icon",
        "iconType": "cupertino",
        "icon": "heart_solid"
      },
      "onPressed": {}
    }
  ]
}
```