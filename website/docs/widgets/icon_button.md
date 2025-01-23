# IconButton

The Mirai Icon Button allows you to build a Flutter icon button widget using JSON.
To know more about the icon button widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/IconButton-class.html).

## Properties

| Property       | Type                    | Description                                                                        |
|----------------|-------------------------|------------------------------------------------------------------------------------|
| iconSize       | `double?`               | The size of the icon inside the button.                                            |
| padding        | `MiraiEdgeInsets?`      | The padding inside the button.                                                     |
| alignment      | `MiraiAlignment?`       | How the icon should be aligned within the button.                                  |
| splashRadius   | `double?`               | The radius of the splash effect.                                                   |
| color          | `String?`               | The color to paint the icon.                                                       |
| focusColor     | `String?`               | The color to paint the button when it has the input focus.                         |
| hoverColor     | `String?`               | The color to paint the button when a pointer is hovering over it.                  |
| highlightColor | `String?`               | The color to paint the button when it is pressed.                                  |
| splashColor    | `String?`               | The color to paint the splash effect when the button is pressed.                   |
| disabledColor  | `String?`               | The color to paint the icon when the button is disabled.                           |
| onPressed      | `Map<String, dynamic>?` | The callback that is called when the button is tapped.                             |
| autofocus      | `bool`                  | Whether the button should be focused when the page is loaded. Defaults to `false`. |
| tooltip        | `String?`               | The text to display when the user long-presses the button.                         |
| enableFeedback | `bool?`                 | Whether to provide acoustic and/or haptic feedback.                                |
| constraints    | `MiraiBoxConstraints?`  | The constraints for the button.                                                    |
| style          | `MiraiButtonStyle?`     | The style to apply to the button.                                                  |
| isSelected     | `bool?`                 | Whether the button is selected.                                                    |
| selectedIcon   | `Map<String, dynamic>?` | The icon to display when the button is selected.                                   |
| icon           | `Map<String, dynamic>?` | The icon to display inside the button.                                             |

## Example JSON

```json
{
  "type": "iconButton",
  "iconSize": 24.0,
  "padding": {
    "left": 8.0,
    "top": 8.0,
    "right": 8.0,
    "bottom": 8.0
  },
  "alignment": "center",
  "splashRadius": 20.0,
  "color": "#000000",
  "focusColor": "#FFC107",
  "hoverColor": "#FF9800",
  "highlightColor": "#FF5722",
  "splashColor": "#FFEB3B",
  "disabledColor": "#BDBDBD",
  "onPressed": {},
  "autofocus": false,
  "tooltip": "Add Item",
  "enableFeedback": true,
  "constraints": {
    "minWidth": 48.0,
    "minHeight": 48.0
  },
  "style": {
    "backgroundColor": "#FFC107",
    "foregroundColor": "#000000"
  },
  "isSelected": false,
  "selectedIcon": {
    "type": "icon",
    "icon": "check"
  },
  "icon": {
    "type": "icon",
    "icon": "add"
  }
}
```