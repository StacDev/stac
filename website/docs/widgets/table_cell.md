# Table Cell
MiraiTableCell allows you to define the Flutter TableCell widget using JSON.
To know more about the TableCell widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/TableCell-class.html).

## Properties 
| Property          | Type                          | Description                                                                                                                                   |
|-------------------|-------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| verticalAlignment | `TableCellVerticalAlignment?` | Defines the verticalAlignment for the table cell. Can be `top`, `middle`, `bottom`, `baseline`, `fill` & `intrinsicHeight` Defaults to `top`. |
| child             | `Map<String, dynamic>`        | The child widget of the table cell.                                                                                                           |

## Example

```json
{
    "type": "tableCell",
    "verticalAlignment": "top",
    "child": {
    "type": "container",
    "color": "#40000000",
    "height": 50.0,
    "child": {
        "type": "center",
        "child": {
        "type": "text",
        "data": "Header 1"
        }
    }
    }
},
```