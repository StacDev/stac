# DefaultTabController

The Mirai DefaultTabController allows you to build a Flutter DefaultTabController widget using JSON.
To know more about the DefaultTabController widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/DefaultTabController-class.html).

## Properties

| Property     | Type                    | Description                                                                 |
|--------------|-------------------------|-----------------------------------------------------------------------------|
| length       | `int`                   | The number of tabs.                                                         |
| initialIndex | `int`                   | The initial index of the selected tab. Defaults to `0`.                     |
| child        | `Map<String, dynamic>`  | The widget below this widget in the tree.                                   |

## Example JSON

```json
{
  "type": "defaultTabController",
  "length": 3,
  "child": {
    "type": "column",
    "children": [
      {
        "type": "tabBar",
        "tabs": [
          {"type": "tab", "text": "Tab 1"},
          {"type": "tab", "text": "Tab 2"},
          {"type": "tab", "text": "Tab 3"}
        ]
      },
      {
        "type": "tabBarView",
        "children": [
          {"type": "text", "data": "Content for Tab 1"},
          {"type": "text", "data": "Content for Tab 2"},
          {"type": "text", "data": "Content for Tab 3"}
        ]
      }
    ]
  }
}
```