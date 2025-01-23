# FloatingActionButton

The Mirai Floating Action Button allows you to build a Flutter floating action button widget using JSON.
To know more about the floating action button widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html).

## Properties

| Property                 | Type                       | Description                                                                           |
|--------------------------|----------------------------|---------------------------------------------------------------------------------------|
| onPressed                | `Map<String, dynamic>?`    | The callback that is called when the button is tapped.                                |
| textStyle                | `MiraiTextStyle?`          | The text style to apply to the button's label.                                        |
| buttonType               | `FloatingActionButtonType` | The type of the floating action button. Defaults to `FloatingActionButtonType.small`. |
| autofocus                | `bool`                     | Whether the button should be focused when the page is loaded. Defaults to `false`.    |
| icon                     | `Map<String, dynamic>?`    | The icon to display inside the button.                                                |
| backgroundColor          | `String?`                  | The color to paint the button.                                                        |
| foregroundColor          | `String?`                  | The color to paint the button's icon.                                                 |
| focusColor               | `String?`                  | The color to paint the button when it has the input focus.                            |
| hoverColor               | `String?`                  | The color to paint the button when a pointer is hovering over it.                     |
| splashColor              | `String?`                  | The color to paint the splash effect when the button is pressed.                      |
| extendedTextStyle        | `MiraiTextStyle?`          | The text style to apply to the extended button's label.                               |
| elevation                | `double?`                  | The elevation of the button.                                                          |
| focusElevation           | `double?`                  | The elevation of the button when it has the input focus.                              |
| hoverElevation           | `double?`                  | The elevation of the button when a pointer is hovering over it.                       |
| disabledElevation        | `double?`                  | The elevation of the button when it is disabled.                                      |
| highlightElevation       | `double?`                  | The elevation of the button when it is pressed.                                       |
| extendedIconLabelSpacing | `double?`                  | The spacing between the icon and label in the extended button.                        |
| enableFeedback           | `bool?`                    | Whether to provide acoustic and/or haptic feedback.                                   |
| tooltip                  | `String?`                  | The text to display when the user long-presses the button.                            |
| heroTag                  | `Object?`                  | The tag to use for the hero animation.                                                |
| child                    | `Map<String, dynamic>`     | The widget to display inside the button.                                              |

## Example JSON

```json
{
  "type": "floatingActionButton",
  "onPressed": {},
  "textStyle": {
    "fontSize": 16,
    "color": "#FFFFFF"
  },
  "buttonType": "small",
  "autofocus": false,
  "icon": {
    "type": "icon",
    "icon": "add"
  },
  "backgroundColor": "#FFC107",
  "foregroundColor": "#000000",
  "focusColor": "#FF5722",
  "hoverColor": "#FF9800",
  "splashColor": "#FFEB3B",
  "extendedTextStyle": {
    "fontSize": 14,
    "color": "#FFFFFF"
  },
  "elevation": 6.0,
  "focusElevation": 8.0,
  "hoverElevation": 10.0,
  "disabledElevation": 2.0,
  "highlightElevation": 12.0,
  "extendedIconLabelSpacing": 8.0,
  "enableFeedback": true,
  "tooltip": "Add Item",
  "heroTag": "fab1",
  "child": {
    "type": "text",
    "data": "Add"
  }
}