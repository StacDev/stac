# TableRow

StacTableRow를 사용하면 JSON을 사용하여 Flutter TableRow 위젯을 정의할 수 있습니다.
Flutter의 TableRow 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/TableRow-class.html)를 참조하세요.

## Properties

| Property   | Type                         | Description                                                                                                                                             |
|------------|------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| decoration | `StacDecoration?`           | 이 행 뒤에 그려질 데코레이션을 정의합니다. `StacDecoration`을 참조하세요.                                                                            |
| children   | `List<Map<String, dynamic>>` | 이 행의 셀을 구성하는 위젯들을 정의합니다. [`StacTableCell`](./table_cell)을 사용하여 행의 각 셀의 개별 정렬을 제어하세요. |

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
