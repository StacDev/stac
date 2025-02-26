# CustomScrollView

The Stac CustomScrollView allows you to build a Flutter CustomScrollView widget using JSON.
To know more about the CustomScrollView widget in Flutter, refer to
the [official documentation](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html).

## Properties

| Property                | Type                                | Description                                                                                                         |
|-------------------------|-------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| slivers                 | `List<Map<String, dynamic>>`        | The slivers to place inside the viewport.                                                                           |
| scrollDirection         | `Axis`                              | The axis along which the scroll view scrolls. Defaults to `Axis.vertical`.                                          |
| reverse                 | `bool`                              | Whether the scroll view scrolls in the reverse direction. Defaults to `false`.                                      |
| padding                 | `StacEdgeInsets?`                   | The amount of space by which to inset the child.                                                                    |
| primary                 | `bool?`                             | Whether this is the primary scroll view associated with the parent.                                                 |
| physics                 | `StacScrollPhysics?`                | How the scroll view should respond to user input.                                                                   |
| dragStartBehavior       | `DragStartBehavior`                 | Determines the way that drag start behavior is handled. Defaults to `DragStartBehavior.start`.                      |
| clipBehavior            | `Clip`                              | The content will be clipped (or not) according to this option. Defaults to `Clip.hardEdge`.                         |
| restorationId           | `String?`                           | The restoration ID to save and restore the state of the scroll view.                                                |
| keyboardDismissBehavior | `ScrollViewKeyboardDismissBehavior` | Configures how the scroll view should dismiss the keyboard. Defaults to `ScrollViewKeyboardDismissBehavior.manual`. |

## Example JSON

```json
{
  "type": "customScrollView",
  "slivers": [
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
    }
  ]
}
```