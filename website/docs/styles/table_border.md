# Table Border

MiraiTableBorder allows you to define the Flutter TableBorder class using JSON.
To know more about the TableBorder class in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/rendering/TableBorder-class.html).

## Properties

| Property     | Type                | Description                                    |
|--------------|---------------------|------------------------------------------------|
| color        | `String`            | Defines the color of the table border.         |
| width        | `double`            | Defines the width of the table border.         |
| style        | `BorderStyle`       | Defines the style of the table border.         |
| borderRadius | `MiraiBorderRadius` | Defines the border radius of the table border. |


## Example

```json
{
    "tableBorder": {
        "color": "#000000",
        "width": 1.0,
        "style": "solid",
        "borderRadius": {
            "topLeft": 16.0,
            "topRight": 16.0,
            "bottomLeft": 16.0,
            "bottomRight": 16.0
        }
    }
}
```