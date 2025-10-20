# TableCell
StacTableCell을 사용하면 JSON을 사용하여 Flutter TableCell 위젯을 정의할 수 있습니다.
Flutter의 TableCell 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/TableCell-class.html)를 참조하세요.

## Properties

| Property          | Type                          | Description                                                                                                                                   |
|-------------------|-------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| verticalAlignment | `TableCellVerticalAlignment?` | 테이블 셀의 수직 정렬을 정의합니다. `top`, `middle`, `bottom`, `baseline`, `fill`, `intrinsicHeight`이 될 수 있습니다. 기본값은 `top`입니다. |
| child             | `Map<String, dynamic>`        | 테이블 셀의 자식 위젯입니다.                                                                                                           |

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
}
```
