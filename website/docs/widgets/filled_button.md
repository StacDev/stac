# FilledButton

The Stac Filled Button allows you to build a Flutter filled button widget using JSON.
To know more about the filled button widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/FilledButton-class.html).

## Properties

| Property      | Type                    | Description                                                                        |
|---------------|-------------------------|------------------------------------------------------------------------------------|
| onPressed     | `Map<String, dynamic>?` | The callback that is called when the button is tapped.                             |
| onLongPress   | `Map<String, dynamic>?` | The callback that is called when the button is long-pressed.                       |
| onHover       | `Map<String, dynamic>?` | The callback that is called when the button is hovered over.                       |
| onFocusChange | `Map<String, dynamic>?` | The callback that is called when the button's focus changes.                       |
| style         | `StacButtonStyle?`      | The style to apply to the button.                                                  |
| autofocus     | `bool`                  | Whether the button should be focused when the page is loaded. Defaults to `false`. |
| clipBehavior  | `Clip`                  | Determines how the content should be clipped. Defaults to `Clip.none`.             |
| child         | `Map<String, dynamic>`  | The widget to display inside the button.                                           |

## Example JSON

```json
{
  "type": "filledButton",
  "onPressed": {},
  "onLongPress": {},
  "onHover": {},
  "onFocusChange": {},
  "style": {
    "backgroundColor": "#FFC107",
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