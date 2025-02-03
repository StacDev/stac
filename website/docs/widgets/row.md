# Row

Stac row allows you to build the Flutter row widget using JSON.
To know more about the row widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Row-class.html).

## Properties

| Property           | Type                        | Description                                                                                                           |
|--------------------|-----------------------------|-----------------------------------------------------------------------------------------------------------------------|
| mainAxisAlignment  | `MainAxisAlignment`         | How the children should be placed along the main axis.                                                                |
| crossAxisAlignment | `CrossAxisAlignment`        | How the children should be placed along the cross axis.                                                               |
| mainAxisSize       | `MainAxisSize`              | How much space should be occupied in the main axis.                                                                   |
| textDirection      | `TextDirection`             | Determines the order to lay children out horizontally and how to interpret start and end in the horizontal direction. |
| spacing            | `double`                    | How much space to place between children in the main axis.                                                            |
| children           | `List<Map<String,dynamic>>` | The widgets below this widget in the tree.                                                                            |

## Example JSON

```json
{
  "type": "row",
  "mainAxisAlignment": "center",
  "crossAxisAlignment": "center",
  "spacing": 12,
  "children": [
    {
      "type": "image",
      "src": "https://images.pexels.com/photos/2718416/pexels-photo-2718416.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "width": 100
    },
    {
      "type": "image",
      "src": "https://images.pexels.com/photos/121629/pexels-photo-121629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "width": 100
    },
    {
      "type": "image",
      "src": "https://images.pexels.com/photos/1414642/pexels-photo-1414642.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "width": 100
    }
  ]
}
```