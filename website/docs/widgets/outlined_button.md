# Outlined Button

The Mirai Outlined Button allows you to build a Flutter outlined button widget using JSON.
To know more about the outlined button widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/OutlinedButton-class.html).

## Properties

| Property      | Type                    | Description                                                                        |
|---------------|-------------------------|------------------------------------------------------------------------------------|
| onPressed     | `Map<String, dynamic>?` | The callback that is called when the button is tapped.                             |
| style         | `MiraiButtonStyle?`     | The style to apply to the button.                                                  |
| autofocus     | `bool`                  | Whether the button should be focused when the page is loaded. Defaults to `false`. |
| clipBehavior  | `Clip`                  | Determines how the content should be clipped. Defaults to `Clip.none`.             |
| child         | `Map<String, dynamic>`  | The widget to display inside the button.                                           |

## Example JSON

```json
{
  "type": "outlinedButton",
  "onPressed": {},
  "style": {
    "backgroundColor": "#FFFFFF",
    "foregroundColor": "#000000"
  },
  "autofocus": false,
  "clipBehavior": "none",
  "child": {
    "type": "text",
    "data": "Click Me!"
  }
}
```
