# PageView

The Mirai PageView allows you to build a Flutter PageView widget using JSON.
To know more about the PageView widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/PageView-class.html).

## Properties

| Property               | Type                         | Description                                                                   |
|------------------------|------------------------------|-------------------------------------------------------------------------------|
| scrollDirection        | `Axis`                       | The axis along which the page view scrolls. Defaults to `Axis.horizontal`.    |
| reverse                | `bool`                       | Whether the page view scrolls in the reverse direction. Defaults to `false`.  |
| physics                | `MiraiScrollPhysics?`        | The physics for the scroll view.                                              |
| pageSnapping           | `bool`                       | Whether the page view should snap to page boundaries. Defaults to `true`.     |
| onPageChanged          | `Map<String, dynamic>?`      | The callback that is called when the page changes.                            |
| dragStartBehavior      | `DragStartBehavior`          | The drag start behavior. Defaults to `DragStartBehavior.start`.               |
| allowImplicitScrolling | `bool`                       | Whether to allow implicit scrolling. Defaults to `false`.                     |
| restorationId          | `String?`                    | The restoration ID to save and restore the scroll offset.                     |
| clipBehavior           | `Clip`                       | The clip behavior of the page view. Defaults to `Clip.hardEdge`.              |
| padEnds                | `bool`                       | Whether to pad the ends of the page view. Defaults to `true`.                 |
| initialPage            | `int`                        | The initial page to show. Defaults to `0`.                                    |
| keepPage               | `bool`                       | Whether to save the current page. Defaults to `true`.                         |
| viewportFraction       | `double`                     | The fraction of the viewport that each page should occupy. Defaults to `1.0`. |
| children               | `List<Map<String, dynamic>>` | The widgets below this widget in the tree. Defaults to an empty list.         |

## Example JSON

```json
{
  "type": "pageView",
  "children": [
    {
      "type": "container",
      "color": "#D9D9D9",
      "child": {
        "type": "center",
        "child": {
          "type": "text",
          "data": "Page 1",
          "style": {
            "fontSize": 23,
            "fontWeight": "w400"
          }
        }
      }
    },
    {
      "type": "container",
      "color": "#FC3F1B",
      "child": {
        "type": "center",
        "child": {
          "type": "text",
          "data": "Page 2",
          "style": {
            "fontSize": 23,
            "fontWeight": "w400"
          }
        }
      }
    },
    {
      "type": "container",
      "color": "#D9D9D9",
      "child": {
        "type": "center",
        "child": {
          "type": "text",
          "data": "Page 3",
          "style": {
            "fontSize": 23,
            "fontWeight": "w400"
          }
        }
      }
    }
  ]
}
```