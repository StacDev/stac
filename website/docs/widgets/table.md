# Table

Mirai table allows you to build the Flutter align widget using JSON.
To know more about the Table widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Table-class.html).

## Properties

| Property                 | Type                                | Description                                                                                                                                                                     |
| ------------------------ | ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| columnWidths             | `Map<String, Map<String, dynamic>>` | Determines the column width on a column by column basis, if a particular column entry has null width `defaultColumnWidth` is used                                               |
| defaultColumnWidth       | `Map<String, dynamic>`              | Determines the  default column width. Defaults to `flexColumnWidth`                                                                                                             |
| textDirection            | `TextDirection`                     | Determines the direction in which the columns are ordered. Can be `rtl` or `ltr`. Defaults to `rtl`                                                                             |
| border                   | `MiraiTableBorder`                  | Defines the border style for `MiraiTable`. See `MiraiTableBorder`                                                                                                               |
| defaultVerticalAlignment | `TableCellVerticalAlignment`        | Defines the verticalAlignment for the cells that don't specify a verticalAlignment. Can be `top`, `middle`, `bottom`, `baseline`, `fill` & `intrinsicHeight` Defaults to `top`. |
| textBaseLine             | `TextBaseline`                      | Defines the text baseline to use when verticalAlignment is `baseline`. Can be `alphabetic` or `ideographic`. There is no default value.                                         |
| children                 | `List<MiraiTableRow>`               | Rows that will be populated in the table. See `MiraiTableRow`                                                                                                                   |

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