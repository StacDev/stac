# Column

The Stac Column allows you to build a Flutter column widget using JSON.
To know more about the column widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Column-class.html).

## Properties

| Property           | Type                         | Description                                                                                      |
|--------------------|------------------------------|--------------------------------------------------------------------------------------------------|
| mainAxisAlignment  | `MainAxisAlignment`          | How the children should be placed along the main axis. Defaults to `MainAxisAlignment.start`.    |
| crossAxisAlignment | `CrossAxisAlignment`         | How the children should be placed along the cross axis. Defaults to `CrossAxisAlignment.center`. |
| mainAxisSize       | `MainAxisSize`               | How much space should be occupied in the main axis. Defaults to `MainAxisSize.max`.              |
| textDirection      | `TextDirection?`             | The text direction to use for resolving alignment.                                               |
| verticalDirection  | `VerticalDirection`          | The vertical direction to use for laying out children. Defaults to `VerticalDirection.down`.     |
| spacing            | `double`                     | The spacing between children. Defaults to `0`.                                                   |
| children           | `List<Map<String, dynamic>>` | The list of widgets to display inside the column. Defaults to an empty list.                     |

## Example JSON

```json
{
  "type": "column",
  "mainAxisAlignment": "center",
  "crossAxisAlignment": "start",
  "mainAxisSize": "min",
  "textDirection": "ltr",
  "verticalDirection": "up",
  "spacing": 10,
  "children": [
    {
      "type": "text",
      "data": "Hello, World!"
    },
    {
      "type": "container",
      "width": 100,
      "height": 100,
      "color": "#FF0000"
    }
  ]
}
```