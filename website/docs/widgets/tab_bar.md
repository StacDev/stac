# TabBar

The Stac TabBar allows you to build a Flutter TabBar widget using JSON.
To know more about the TabBar widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/TabBar-class.html).

## Properties

| Property                             | Type                          | Description                                                                 |
|--------------------------------------|-------------------------------|-----------------------------------------------------------------------------|
| tabs                                 | `List<Map<String, dynamic>>`  | The tabs to display in the tab bar.                                         |
| initialIndex                         | `int`                         | The initial index of the selected tab. Defaults to `0`.                     |
| isScrollable                         | `bool`                        | Whether the tab bar is scrollable. Defaults to `false`.                     |
| padding                              | `StacEdgeInsets?`            | The padding for the tab bar.                                                |
| indicatorColor                       | `String?`                     | The color of the tab indicator.                                             |
| automaticIndicatorColorAdjustment    | `bool`                        | Whether to automatically adjust the indicator color. Defaults to `true`.    |
| indicatorWeight                      | `double`                      | The thickness of the tab indicator. Defaults to `2.0`.                      |
| indicatorPadding                     | `StacEdgeInsets?`            | The padding for the tab indicator.                                          |
| indicatorSize                        | `TabBarIndicatorSize?`        | The size of the tab indicator.                                              |
| labelColor                           | `String?`                     | The color of the selected tab label.                                        |
| labelStyle                           | `StacTextStyle?`             | The text style of the selected tab label.                                   |
| labelPadding                         | `StacEdgeInsets?`            | The padding for the selected tab label.                                     |
| unselectedLabelColor                 | `String?`                     | The color of the unselected tab labels.                                     |
| unselectedLabelStyle                 | `StacTextStyle?`             | The text style of the unselected tab labels.                                |
| dragStartBehavior                    | `DragStartBehavior`           | The drag start behavior. Defaults to `DragStartBehavior.start`.             |
| enableFeedback                       | `bool?`                       | Whether to enable feedback for taps.                                        |
| physics                              | `StacScrollPhysics?`         | The scroll physics for the tab bar.                                         |
| tabAlignment                         | `TabAlignment?`               | The alignment of the tabs.                                                  |

# DefaultTabController

The Stac DefaultTabController allows you to build a Flutter DefaultTabController widget using JSON.
To know more about the DefaultTabController widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/DefaultTabController-class.html).

## Properties

| Property     | Type                   | Description                                             |
|--------------|------------------------|---------------------------------------------------------|
| length       | `int`                  | The number of tabs.                                     |
| initialIndex | `int`                  | The initial index of the selected tab. Defaults to `0`. |
| child        | `Map<String, dynamic>` | The widget below this widget in the tree.               |

# Tab

The Stac Tab allows you to build a Flutter Tab widget using JSON.
To know more about the Tab widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Tab-class.html).

## Properties

| Property    | Type                    | Description                                      |
|-------------|-------------------------|--------------------------------------------------|
| text        | `String?`               | The text to display in the tab.                  |
| icon        | `Map<String, dynamic>?` | The icon to display in the tab.                  |
| iconMargin  | `StacEdgeInsets?`      | The margin around the icon.                      |
| height      | `double?`               | The height of the tab.                           |
| child       | `Map<String, dynamic>?` | The widget below this widget in the tree.        |


# TabBarView

The Stac TabBarView allows you to build a Flutter TabBarView widget using JSON.
To know more about the TabBarView widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/TabBarView-class.html).

## Properties

| Property          | Type                         | Description                                                                   |
|-------------------|------------------------------|-------------------------------------------------------------------------------|
| children          | `List<Map<String, dynamic>>` | The widgets to display in each tab.                                           |
| initialIndex      | `int`                        | The initial index of the selected tab. Defaults to `0`.                       |
| dragStartBehavior | `DragStartBehavior`          | The drag start behavior. Defaults to `DragStartBehavior.start`.               |
| physics           | `StacScrollPhysics?`        | The scroll physics for the tab bar view.                                      |
| viewportFraction  | `double`                     | The fraction of the viewport that each page should occupy. Defaults to `1.0`. |
| clipBehavior      | `Clip`                       | The clip behavior. Defaults to `Clip.hardEdge`.                               |

## Example JSON

```json
{
  "type": "defaultTabController",
  "length": 3,
  "child": {
    "type": "scaffold",
    "appBar": {
      "type": "appBar",
      "title": {
        "type": "text",
        "data": "Tabbar"
      },
      "bottom": {
        "type": "tabBar",
        "tabs": [
          {
            "type": "tab",
            "text": "Red"
          },
          {
            "type": "tab",
            "text": "Red"
          },
          {
            "type": "tab",
            "text": "Red"
          }
        ]
      }
    },
    "body": {
      "type": "tabBarView",
      "children": [
        {
          "type": "container",
          "color": "#D9D9D9"
        },
        {
          "type": "container",
          "color": "#FC3F1B"
        },
        {
          "type": "container",
          "color": "#D9D9D9"
        }
      ]
    }
  }
}
```
