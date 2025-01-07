# ListView

Mirai listview allows you to build the Flutter listview widget using JSON.
To know more about the listview widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/ListView-class.html).

## Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| scrollDirection | `Axis` | The Axis along which the scroll view's offset increases. |
| reverse | `bool` | Whether the scroll view scrolls in the reading direction. |
| primary | `bool` | Whether this is the primary scroll view. |
| physics | `MiraiScrollPhysics` | How the scroll view should respond to user input. |
| shrinkWrap | `bool` | Whether the extent of the scroll view in the scrollDirection should be determined by the contents being viewed. |
| padding | `MiraiPadding` | The amount of space by which to inset the children. |
| addAutomaticKeepAlives | `bool` | Determines whether the children should be automatically kept alive (cached) when they are no longer visible, preserving their state. |
| addRepaintBoundaries | `bool` | Determines whether each child widget is wrapped in a RepaintBoundary to optimize rendering by reducing unnecessary repaints. |
| addSemanticIndexes | `bool` | Determines whether semantic indexes are assigned to the children, enabling accessibility tools to understand the order and structure of the list items. |
| cacheExtent | `double` | The viewport has an area before and after the visible area to cache items that are about to become visible when the user scrolls. |
| children | `List<Map<String,dynamic>>` | The widgets below this widget in the tree. |
| separator | `Map<String,dynamic>` | Defines a widget, to display between each pair of list items. |
| semanticChildCount | `int` | The number of children that will contribute semantic information. |
| dragStartBehavior | `DragStartBehavior` | Determines the way that drag start behavior is handled. |
| keyboardDismissBehavior | `ScrollViewKeyboardDismissBehavior` | Defines how this ScrollView will dismiss the keyboard automatically. |
| restorationId | `String` | Restoration ID to save and restore the scroll offset of the scrollable. |
| clipBehavior | `Clip` | The content will be clipped (or not) according to this option. |

## Example JSON

```json
{
  "type": "listView",
  "shrinkWrap": true,
  "separator": {
    "type": "container",
    "height": 10
  },
  "children": [
    {
      "type": "listTile",
      "leading": {
        "type": "container",
        "height": 50,
        "width": 50,
        "color": "#165FC7",
        "child": {
          "type": "column",
          "mainAxisAlignment": "center",
          "crossAxisAlignment": "center",
          "children": [
            {
              "type": "text",
              "data": "1",
              "style": {
                "fontSize": 21
              }
            }
          ]
        }
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item 1",
          "style": {
            "fontSize": 18
          }
        }
      },
      "subtitle": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item description",
          "style": {
            "fontSize": 14
          }
        }
      },
      "trailing": {
        "type": "icon",
        "iconType": "material",
        "icon": "more_vert",
        "size": 24
      }
    },
    {
      "type": "listTile",
      "leading": {
        "type": "container",
        "height": 50,
        "width": 50,
        "color": "#165FC7",
        "child": {
          "type": "column",
          "mainAxisAlignment": "center",
          "crossAxisAlignment": "center",
          "children": [
            {
              "type": "text",
              "data": "2",
              "style": {
                "fontSize": 21
              }
            }
          ]
        }
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item 2",
          "style": {
            "fontSize": 18
          }
        }
      },
      "subtitle": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item description",
          "style": {
            "fontSize": 14
          }
        }
      },
      "trailing": {
        "type": "icon",
        "iconType": "material",
        "icon": "more_vert",
        "size": 24
      }
    },
    {
      "type": "listTile",
      "leading": {
        "type": "container",
        "height": 50,
        "width": 50,
        "color": "#165FC7",
        "child": {
          "type": "column",
          "mainAxisAlignment": "center",
          "crossAxisAlignment": "center",
          "children": [
            {
              "type": "text",
              "data": "3",
              "style": {
                "fontSize": 21
              }
            }
          ]
        }
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item 3",
          "style": {
            "fontSize": 18
          }
        }
      },
      "subtitle": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item description",
          "style": {
            "fontSize": 14
          }
        }
      },
      "trailing": {
        "type": "icon",
        "iconType": "material",
        "icon": "more_vert",
        "size": 24
      }
    }
  ]
}
```

