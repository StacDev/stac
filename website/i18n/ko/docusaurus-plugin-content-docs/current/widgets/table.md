# Table

StacTable을 사용하면 JSON을 사용하여 Flutter Table 위젯을 빌드할 수 있습니다.
Flutter의 Table 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Table-class.html)를 참조하세요.

## 속성

| Property                 | Type                               | Description                                                                                                                                                                                                     |
|--------------------------|------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| columnWidths             | `Map<int, StacTableColumnWidth>?` | 열별로 열 너비를 결정합니다. 특정 열 항목에 null 너비가 있는 경우 `defaultColumnWidth`가 사용됩니다. [`StacTableColumnWidth`](./../styles_and_attributes/table_column_width)를 참조하세요. |
| defaultColumnWidth       | `StacTableColumnWidth?`           | 기본 열 너비를 결정합니다. 기본값은 `flexColumnWidth`입니다. [`StacTableColumnWidth`](./../styles_and_attributes/table_column_width)를 참조하세요.                                                               |
| textDirection            | `TextDirection?`                   | 열이 정렬되는 방향을 결정합니다. `rtl` 또는 `ltr`이 될 수 있습니다. 기본값은 `rtl`입니다.                                                                                                            |
| border                   | `StacTableBorder?`                | `StacTable`의 테두리 스타일을 정의합니다. [`StacTableBorder`](./../styles_and_attributes/table_border)를 참조하세요.                                                                                                   |
| defaultVerticalAlignment | `TableCellVerticalAlignment?`      | verticalAlignment을 지정하지 않는 셀의 verticalAlignment을 정의합니다. `top`, `middle`, `bottom`, `baseline`, `fill`, `intrinsicHeight`이 될 수 있습니다. 기본값은 `top`입니다.                                 |
| textBaseLine             | `TextBaseline?`                    | verticalAlignment이 `baseline`일 때 사용할 텍스트 베이스라인을 정의합니다. `alphabetic` 또는 `ideographic`이 될 수 있습니다. 기본값은 없습니다.                                                         |
| children                 | `List<StacTableRow>`              | 테이블에 채워질 행들입니다. [`StacTableRow`](./table_row)를 참조하세요.                                                                                                                                   |

## Example

```json
{
      "type": "table",
      "columnWidths": {
        "1": {
          "type": "fixedColumnWidth",
          "value": 200
        }
      },
      "defaultColumnWidth": {
        "type": "flexColumnWidth",
        "value": 1
      },
      "textDirection": "ltr",
      "defaultVerticalAlignment": "bottom",
      "border": {
        "type": "tableBorder",
        "top": {
          "color": "#428AF5",
          "width": 1.0
        },
        "right": {
          "color": "#428AF5",
          "width": 1.0
        },
        "bottom": {
          "color": "#428AF5",
          "width": 1.0
        },
        "left": {
          "color": "#428AF5",
          "width": 1.0
        },
        "borderRadius": 16
      },
      "children": [
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
        {
          "type": "tableRow",
          "children": [
            {
              "type": "tableCell",
              "child": {
                "type": "sizedBox",
                "height": 50.0,
                "child": {
                  "type": "center",
                  "child": {
                    "type": "text",
                    "data": "Row 1, Cell 1"
                  }
                }
              }
            },
            {
              "type": "tableCell",
              "child": {
                "type": "sizedBox",
                "height": 50.0,
                "child": {
                  "type": "center",
                  "child": {
                    "type": "text",
                    "data": "Row 1, Cell 2"
                  }
                }
              }
            },
            {
              "type": "tableCell",
              "child": {
                "type": "sizedBox",
                "height": 50.0,
                "child": {
                  "type": "center",
                  "child": {
                    "type": "text",
                    "data": "Row 1, Cell 3"
                  }
                }
              }
            }
          ]
        },
      ]
    }
```
