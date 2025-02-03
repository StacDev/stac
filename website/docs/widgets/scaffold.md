# Scaffold

The Stac Scaffold allows you to build a Flutter scaffold widget using JSON.
To know more about the scaffold widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Scaffold-class.html).

## Properties

| Property                       | Type                                 | Description                                                                             |
|--------------------------------|--------------------------------------|-----------------------------------------------------------------------------------------|
| appBar                         | `Map<String, dynamic>?`              | The app bar widget of the scaffold.                                                     |
| body                           | `Map<String, dynamic>?`              | The body widget of the scaffold.                                                        |
| floatingActionButton           | `Map<String, dynamic>?`              | The floating action button widget of the scaffold.                                      |
| floatingActionButtonLocation   | `StacFloatingActionButtonLocation?` | The location of the floating action button.                                             |
| persistentFooterButtons        | `List<Map<String, dynamic>>?`        | The persistent footer buttons of the scaffold.                                          |
| drawer                         | `Map<String, dynamic>?`              | The drawer widget of the scaffold.                                                      |
| endDrawer                      | `Map<String, dynamic>?`              | The end drawer widget of the scaffold.                                                  |
| bottomNavigationBar            | `Map<String, dynamic>?`              | The bottom navigation bar widget of the scaffold.                                       |
| bottomSheet                    | `Map<String, dynamic>?`              | The bottom sheet widget of the scaffold.                                                |
| backgroundColor                | `String?`                            | The background color of the scaffold.                                                   |
| resizeToAvoidBottomInset       | `bool?`                              | Whether the scaffold should resize to avoid the bottom inset.                           |
| primary                        | `bool`                               | Whether the scaffold is the primary scaffold. Defaults to `true`.                       |
| drawerDragStartBehavior        | `DragStartBehavior`                  | The drag start behavior for the drawer. Defaults to `DragStartBehavior.start`.          |
| extendBody                     | `bool`                               | Whether the body should extend into the scaffold's bottom padding. Defaults to `false`. |
| extendBodyBehindAppBar         | `bool`                               | Whether the body should extend behind the app bar. Defaults to `false`.                 |
| drawerScrimColor               | `String?`                            | The color of the scrim for the drawer.                                                  |
| drawerEdgeDragWidth            | `double?`                            | The width of the edge drag area for the drawer.                                         |
| drawerEnableOpenDragGesture    | `bool`                               | Whether the drawer can be opened with a drag gesture. Defaults to `true`.               |
| endDrawerEnableOpenDragGesture | `bool`                               | Whether the end drawer can be opened with a drag gesture. Defaults to `true`.           |
| restorationId                  | `String?`                            | The restoration ID to save and restore the state of the scaffold.                       |

## Example JSON

```json
{
  "type": "scaffold",
  "appBar": {
    "type": "appBar",
    "title": {
      "type": "text",
      "data": "App Bar Title"
    }
  },
  "body": {
    "type": "center",
    "child": {
      "type": "text",
      "data": "Hello, World!"
    }
  },
  "floatingActionButton": {
    "type": "floatingActionButton",
    "child": {
      "type": "icon",
      "icon": "add"
    },
    "onPressed": {
      "type": "function",
      "name": "onFabPressed"
    }
  },
  "backgroundColor": "#FFFFFF",
  "drawer": {
    "type": "drawer",
    "child": {
      "type": "column",
      "children": [
        {
          "type": "text",
          "data": "Drawer Item 1"
        },
        {
          "type": "text",
          "data": "Drawer Item 2"
        }
      ]
    }
  }
}
```