# Table

StacTable allows you to build the Flutter Table widget using JSON.
To know more about the Table widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Table-class.html).

## Properties

| Property                 | Type                               | Description                                                                                                                                                                                                     |
|--------------------------|------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| columnWidths             | `Map<int, StacTableColumnWidth>?` | Determines the column width on a column by column basis, if a particular column entry has null width `defaultColumnWidth` is used. See [`StacTableColumnWidth`](./../styles_and_attributes/table_column_width) |
| defaultColumnWidth       | `StacTableColumnWidth?`           | Determines the  default column width. Defaults to `flexColumnWidth`. See [`StacTableColumnWidth`](./../styles_and_attributes/table_column_width)                                                               |
| textDirection            | `TextDirection?`                   | Determines the direction in which the columns are ordered. Can be `rtl` or `ltr`. Defaults to `rtl`.                                                                                                            |
| border                   | `StacTableBorder?`                | Defines the border style for `StacTable`. See [`StacTableBorder`](./../styles_and_attributes/table_border).                                                                                                   |
| defaultVerticalAlignment | `TableCellVerticalAlignment?`      | Defines the verticalAlignment for the cells that don't specify a verticalAlignment. Can be `top`, `middle`, `bottom`, `baseline`, `fill` & `intrinsicHeight` Defaults to `top`.                                 |
| textBaseLine             | `TextBaseline?`                    | Defines the text baseline to use when verticalAlignment is `baseline`. Can be `alphabetic` or `ideographic`. There is no default value.                                                                         |
| children                 | `List<StacTableRow>`              | Rows that will be populated in the table. See [`StacTableRow`](./table_row).                                                                                                                                   |

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