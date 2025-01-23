# AlertDialog

The Mirai AlertDialog allows you to build a Flutter alert dialog widget using JSON.
To know more about the alert dialog widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/AlertDialog-class.html).

## Properties

| Property                     | Type                          | Description                                                                                  |
|------------------------------|-------------------------------|----------------------------------------------------------------------------------------------|
| icon                         | `Map<String, dynamic>?`       | The icon to display in the alert dialog.                                                     |
| iconPadding                  | `MiraiEdgeInsets?`            | The padding around the icon.                                                                 |
| iconColor                    | `String?`                     | The color of the icon.                                                                       |
| title                        | `Map<String, dynamic>?`       | The title widget of the alert dialog.                                                        |
| titlePadding                 | `MiraiEdgeInsets?`            | The padding around the title.                                                                |
| titleTextStyle               | `MiraiTextStyle?`             | The text style of the title.                                                                 |
| content                      | `Map<String, dynamic>?`       | The content widget of the alert dialog.                                                      |
| contentPadding               | `MiraiEdgeInsets?`            | The padding around the content.                                                              |
| contentTextStyle             | `MiraiTextStyle?`             | The text style of the content.                                                               |
| actions                      | `List<Map<String, dynamic>>?` | The actions to display in the alert dialog.                                                  |
| actionsPadding               | `MiraiEdgeInsets?`            | The padding around the actions.                                                              |
| actionsAlignment             | `MainAxisAlignment?`          | The alignment of the actions.                                                                |
| actionsOverflowAlignment     | `OverflowBarAlignment?`       | The overflow alignment of the actions.                                                       |
| actionsOverflowDirection     | `VerticalDirection?`          | The overflow direction of the actions.                                                       |
| actionsOverflowButtonSpacing | `double?`                     | The spacing between overflow buttons.                                                        |
| buttonPadding                | `MiraiEdgeInsets?`            | The padding around the buttons.                                                              |
| backgroundColor              | `String?`                     | The background color of the alert dialog.                                                    |
| elevation                    | `double?`                     | The elevation of the alert dialog.                                                           |
| shadowColor                  | `String?`                     | The shadow color of the alert dialog.                                                        |
| surfaceTintColor             | `String?`                     | The surface tint color of the alert dialog.                                                  |
| semanticLabel                | `String?`                     | The semantic label for the alert dialog.                                                     |
| insetPadding                 | `MiraiEdgeInsets`             | The padding around the alert dialog. Defaults to `left: 40, right: 40, top: 24, bottom: 24`. |
| clipBehavior                 | `Clip`                        | The clip behavior of the alert dialog. Defaults to `Clip.none`.                              |
| shape                        | `MiraiShapeBorder?`           | The shape of the alert dialog.                                                               |
| alignment                    | `MiraiAlignmentGeometry?`     | The alignment of the alert dialog.                                                           |
| scrollable                   | `bool`                        | Whether the alert dialog is scrollable. Defaults to `false`.                                 |

## Example JSON

```json
{
  "type": "alertDialog",
  "content": {
    "type": "padding",
    "padding": {
      "top": 0,
      "left": 12,
      "right": 12,
      "bottom": 8
    },
    "child": {
      "type": "text",
      "data": "Discard draft?",
      "align": "center",
      "style": {
        "fontSize": 14
      }
    }
  },
  "actions": [
    {
      "type": "textButton",
      "child": {
        "type": "text",
        "data": "CANCEL"
      },
      "onPressed": {
        "actionType": "navigate",
        "navigationStyle": "pop"
      }
    },
    {
      "type": "sizedBox",
      "width": 8
    },
    {
      "type": "textButton",
      "child": {
        "type": "text",
        "data": "DISCARD"
      },
      "onPressed": {
        "actionType": "navigate",
        "navigationStyle": "pop"
      }
    },
    {
      "type": "sizedBox",
      "width": 12
    }
  ]
}
```