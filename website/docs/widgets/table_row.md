# TableRow

StacTableRow allows you to define the Flutter TableRow widget using JSON.
To know more about the TableRow widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/TableRow-class.html).

## Properties

| Property   | Type                         | Description                                                                                                                                             |
|------------|------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| decoration | `StacDecoration?`           | Defines the decoration to be painted behind this row. See `StacDecoration`.                                                                            |
| children   | `List<Map<String, dynamic>>` | Defines the widgets the comprise the cells in this row. Use [`StacTableCell`](./table_cell) to control the individual alignment of each cell in a row. |

## Example

```json
{
    "type": "tableRow",
    "children": [
    {
        "type": "tableCell",
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
    {
        "type": "tableCell",
        "child": {
        "type": "container",
        "color": "#40000000",
        "height": 50.0,
        "child": {
            "type": "center",
            "child": {
            "type": "text",
            "data": "Header 2"
            }
        }
        }
    },
    {
        "type": "tableCell",
        "child": {
        "type": "container",
        "color": "#40000000",
        "height": 50.0,
        "child": {
            "type": "center",
            "child": {
            "type": "text",
            "data": "Header 3"
            }
        }
        }
    }
    ]
},
```