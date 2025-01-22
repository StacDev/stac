# Wrap

Mirai wrap allows you to build the Flutter wrap widget using JSON
To know more about the wrap widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Wrap-class.html).

## Properties

| Property           | Type                         | Description                                                                                                           |
|--------------------|------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| Axis               | `Axis`                       | The direction to use as the main axis.                                                                                |
| alignment          | `WrapAlignment`              | How the children within a run should be placed in the main axis.                                                      |
| spacing            | `double`                     | How much space to place between children in a run in the main axis.                                                   |
| runAlignment       | `WrapAlignment`              | How the runs themselves should be placed in the cross axis.                                                           |
| runSpacing         | `double`                     | How much space to place between the runs themselves in the cross axis.                                                |
| crossAxisAlignment | `WrapCrossAxisAlignment`     | How the children within a run should be aligned relative to each other in the cross axis.                             |
| textDirection      | `TextDirection`              | Determines the order to lay children out horizontally and how to interpret start and end in the horizontal direction. |
| verticalDirection  | `VerticalDirection`          | Determines the order to lay children out vertically and how to interpret start and end in the vertical direction.     |
| clipBehavior       | `Clip`                       | The content will be clipped (or not) according to this option.                                                        | 
| children           | `List<Map<String, dynamic>>` | The widgets below this widget in the tree.                                                                            |

## Example JSON

```json
{
      "type": "wrap",
      "spacing": 8.0,
      "runSpacing": 4.0,
      "children": [
        {
          "type": "container",
          "color": "#FFCDD2",
          "width": 100,
          "height": 100,
          "child": {
            "type": "center",
            "child": {
              "type": "text",
              "data": "1",
              "style": {
                "color": "#FFFFFF"
              }
            }
          }
        },
        {
          "type": "container",
          "color": "#F8BBD0",
          "width": 100,
          "height": 100,
          "child": {
            "type": "center",
            "child": {
              "type": "text",
              "data": "2",
              "style": {
                "color": "#FFFFFF"
              }
            }
          }
        },
        {
          "type": "container",
          "color": "#E1BEE7",
          "width": 100,
          "height": 100,
          "child": {
            "type": "center",
            "child": {
              "type": "text",
              "data": "3",
              "style": {
                "color": "#FFFFFF"
              }
            }
          }
        },
        {
          "type": "container",
          "color": "#D1C4E9",
          "width": 100,
          "height": 100,
          "child": {
            "type": "center",
            "child": {
              "type": "text",
              "data": "4",
              "style": {
                "color": "#FFFFFF"
              }
            }
          }
        },
      ]
    }
```


