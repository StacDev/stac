# SingleChildScrollView

The Stac SingleChildScrollView allows you to build a Flutter SingleChildScrollView widget using JSON.
To know more about the SingleChildScrollView widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html).

## Properties

| Property                | Type                                | Description                                                                                                         |
|-------------------------|-------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| scrollDirection         | `Axis`                              | The axis along which the scroll view scrolls. Defaults to `Axis.vertical`.                                          |
| reverse                 | `bool`                              | Whether the scroll view scrolls in the reverse direction. Defaults to `false`.                                      |
| padding                 | `StacEdgeInsets?`                  | The amount of space by which to inset the child.                                                                    |
| primary                 | `bool?`                             | Whether this is the primary scroll view associated with the parent.                                                 |
| physics                 | `StacScrollPhysics?`               | How the scroll view should respond to user input.                                                                   |
| child                   | `Map<String, dynamic>?`             | The widget below this widget in the tree.                                                                           |
| dragStartBehavior       | `DragStartBehavior`                 | Determines the way that drag start behavior is handled. Defaults to `DragStartBehavior.start`.                      |
| clipBehavior            | `Clip`                              | The content will be clipped (or not) according to this option. Defaults to `Clip.hardEdge`.                         |
| restorationId           | `String?`                           | The restoration ID to save and restore the state of the scroll view.                                                |
| keyboardDismissBehavior | `ScrollViewKeyboardDismissBehavior` | Configures how the scroll view should dismiss the keyboard. Defaults to `ScrollViewKeyboardDismissBehavior.manual`. |

## Example JSON

```json
{
  "type": "singleChildScrollView",
  "child": {
    "type": "column",
    "children": [
      {
        "type": "text",
        "data": "Hello World!"
      },
      {
        "type": "text",
        "data": "This is a SingleChildScrollView widget."
      },
      {
        "type": "text",
        "data": "You can scroll vertically."
      },
      {
        "type": "text",
        "data": "You can also scroll horizontally."
      }
    ]
  }
}
```