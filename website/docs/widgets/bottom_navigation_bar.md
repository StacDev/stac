# BottomNavigationBar

The Mirai BottomNavigationBar allows you to build a Flutter BottomNavigationBar widget using JSON.
To know more about the BottomNavigationBar widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html).

## Properties

| Property                | Type                                  | Description                                                                    |
|-------------------------|---------------------------------------|--------------------------------------------------------------------------------|
| items                   | `List<MiraiBottomNavigationBarItem>`  | The items to be displayed in the bottom navigation bar.                        |
| elevation               | `double?`                             | The z-coordinate at which to place this bottom navigation bar.                 |
| bottomNavigationBarType | `BottomNavigationBarType?`            | The type of the bottom navigation bar.                                         |
| fixedColor              | `String?`                             | The color of the selected item when `type` is `BottomNavigationBarType.fixed`. |
| backgroundColor         | `String?`                             | The background color of the bottom navigation bar.                             |
| iconSize                | `double`                              | The size of the icons in the bottom navigation bar. Defaults to `24`.          |
| selectedItemColor       | `String?`                             | The color of the selected item.                                                |
| unselectedItemColor     | `String?`                             | The color of the unselected items.                                             |
| selectedFontSize        | `double`                              | The font size of the selected item. Defaults to `14.0`.                        |
| unselectedFontSize      | `double`                              | The font size of the unselected items. Defaults to `12.0`.                     |
| selectedLabelStyle      | `MiraiTextStyle?`                     | The text style of the selected item label.                                     |
| unselectedLabelStyle    | `MiraiTextStyle?`                     | The text style of the unselected item labels.                                  |
| showSelectedLabels      | `bool?`                               | Whether to show labels for selected items.                                     |
| showUnselectedLabels    | `bool?`                               | Whether to show labels for unselected items.                                   |
| enableFeedback          | `bool?`                               | Whether to enable feedback for taps.                                           |
| landscapeLayout         | `BottomNavigationBarLandscapeLayout?` | The layout of the bottom navigation bar in landscape mode.                     |

# DefaultBottomNavigationController

DefaultBottomNavigationController is an inherited widget that is used to share a BottomNavigationController with a BottomNavigationBar or a BottomNavigationView.

## Properties

| Property      | Type                    | Description                                                                 |
|---------------|-------------------------|-----------------------------------------------------------------------------|
| length        | `int`                   | The number of items in the bottom navigation bar.                           |
| initialIndex  | `int?`                  | The initial index of the selected item.                                     |
| child         | `Map<String, dynamic>`  | The widget below this widget in the tree.                                   |


# BottomNavigationBarItem

The Mirai BottomNavigationBarItem allows you to build a Flutter BottomNavigationBarItem using JSON.
To know more about the BottomNavigationBarItem widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/BottomNavigationBarItem-class.html).

## Properties

| Property        | Type                    | Description                                                                 |
|-----------------|-------------------------|-----------------------------------------------------------------------------|
| icon            | `Map<String, dynamic>`  | The icon to display in the bottom navigation bar item.                      |
| label           | `String`                | The label to display in the bottom navigation bar item.                     |
| activeIcon      | `Map<String, dynamic>?` | The icon to display when the item is active.                                |
| backgroundColor | `String?`               | The background color of the bottom navigation bar item.                     |
| tooltip         | `String?`               | The tooltip text to display when the item is long-pressed.                  |


## Example

```json
{
  "type": "defaultBottomNavigationController",
  "length": 3,
  "child": {
    "type": "scaffold",
    "appBar": {
      "type": "appBar",
      "title": {
        "type": "text",
        "data": "Bottom Navigation Screen"
      }
    },
    "body": {
      "type": "bottomNavigationView",
      "children": [
        {
          "type": "center",
          "child": {
            "type": "text",
            "data": "Home",
            "style": {
              "fontSize": 24
            }
          }
        },
        {
          "type": "center",
          "child": {
            "type": "text",
            "data": "Search",
            "style": {
              "fontSize": 24
            }
          }
        },
        {
          "type": "center",
          "child": {
            "type": "text",
            "data": "Profile",
            "style": {
              "fontSize": 24
            }
          }
        }
      ]
    },
    "bottomNavigationBar": {
      "type": "bottomNavigationBar",
      "items": [
        {
          "type": "navigationBarItem",
          "label": "Home",
          "icon": {
            "type": "icon",
            "iconType": "material",
            "icon": "home"
          }
        },
        {
          "type": "navigationBarItem",
          "label": "Search",
          "icon": {
            "type": "icon",
            "iconType": "material",
            "icon": "search"
          }
        },
        {
          "type": "navigationBarItem",
          "label": "Profile",
          "icon": {
            "type": "icon",
            "iconType": "material",
            "icon": "account_circle"
          }
        }
      ]
    }
  }
}
```