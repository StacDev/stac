# GridView

The Stac GridView allows you to build a Flutter GridView widget using JSON.
To know more about the GridView widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/GridView-class.html).

## Properties

| Property                | Type                                | Description                                                                                                                          |
|-------------------------|-------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| scrollDirection         | `Axis`                              | The axis along which the grid scrolls. Defaults to `Axis.vertical`.                                                                  |
| reverse                 | `bool`                              | Whether the grid scrolls in the reverse direction. Defaults to `false`.                                                              |
| primary                 | `bool`                              | Whether this is the primary scroll view. Defaults to `false`.                                                                        |
| physics                 | `StacScrollPhysics?`               | The physics for the scroll view.                                                                                                     |
| shrinkWrap              | `bool`                              | Whether the extent of the scroll view in the scrollDirection should be determined by the contents being viewed. Defaults to `false`. |
| padding                 | `StacEdgeInsets?`                  | The amount of space by which to inset the grid.                                                                                      |
| crossAxisCount          | `int?`                              | The number of children in the cross axis.                                                                                            |
| mainAxisSpacing         | `double`                            | The amount of space between the children in the main axis. Defaults to `0.0`.                                                        |
| crossAxisSpacing        | `double`                            | The amount of space between the children in the cross axis. Defaults to `0.0`.                                                       |
| childAspectRatio        | `double`                            | The ratio of the cross-axis to the main-axis extent of each child. Defaults to `1.0`.                                                |
| mainAxisExtent          | `double?`                           | The extent of each child in the main axis.                                                                                           |
| addAutomaticKeepAlives  | `bool`                              | Whether to add automatic keep-alives. Defaults to `true`.                                                                            |
| addRepaintBoundaries    | `bool`                              | Whether to add repaint boundaries. Defaults to `true`.                                                                               |
| addSemanticIndexes      | `bool`                              | Whether to add semantic indexes. Defaults to `true`.                                                                                 |
| cacheExtent             | `double?`                           | The extent to which the content is cached.                                                                                           |
| children                | `List<Map<String, dynamic>>`        | The widgets below this widget in the tree. Defaults to an empty list.                                                                |
| semanticChildCount      | `int?`                              | The number of children for semantics purposes.                                                                                       |
| dragStartBehavior       | `DragStartBehavior`                 | The drag start behavior. Defaults to `DragStartBehavior.start`.                                                                      |
| keyboardDismissBehavior | `ScrollViewKeyboardDismissBehavior` | The keyboard dismiss behavior. Defaults to `ScrollViewKeyboardDismissBehavior.manual`.                                               |
| restorationId           | `String?`                           | The restoration ID to save and restore the scroll offset.                                                                            |
| clipBehavior            | `Clip`                              | The clip behavior of the grid. Defaults to `Clip.hardEdge`.                                                                          |

## Example JSON

```json
{
  "type": "gridView",
  "scrollDirection": "vertical",
  "reverse": false,
  "primary": false,
  "physics": {
    "type": "scrollPhysics",
    "name": "bouncing"
  },
  "shrinkWrap": false,
  "padding": {
    "left": 10,
    "top": 10,
    "right": 10,
    "bottom": 10
  },
  "crossAxisCount": 2,
  "mainAxisSpacing": 10.0,
  "crossAxisSpacing": 10.0,
  "childAspectRatio": 1.0,
  "mainAxisExtent": 100.0,
  "addAutomaticKeepAlives": true,
  "addRepaintBoundaries": true,
  "addSemanticIndexes": true,
  "cacheExtent": 100.0,
  "children": [
    {
      "type": "text",
      "data": "Item 1"
    },
    {
      "type": "text",
      "data": "Item 2"
    }
  ],
  "semanticChildCount": 2,
  "dragStartBehavior": "start",
  "keyboardDismissBehavior": "manual",
  "restorationId": "grid_view_1",
  "clipBehavior": "hardEdge"
}
```