# ElevatedButton

The Mirai Elevated Button allows you to build a Flutter elevated button widget using JSON.
To know more about the elevated button widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/ElevatedButton-class.html).

## Properties

| Property      | Type                    | Description                                                                                 |
|---------------|-------------------------|---------------------------------------------------------------------------------------------|
| onPressed     | `Map<String, dynamic>?` | The callback that is called when the button is tapped.                                      |
| onLongPress   | `Map<String, dynamic>?` | The callback that is called when the button is long-pressed.                                |
| onHover       | `Map<String, dynamic>?` | The callback that is called when the button is hovered over.                                |
| onFocusChange | `Map<String, dynamic>?` | The callback that is called when the button's focus changes.                                |
| style         | `MiraiButtonStyle?`     | The style to apply to the button.                                                           |
| autofocus     | `bool`                  | Whether the button should be focused when the page is loaded. Defaults to `false`.          |
| clipBehavior  | `Clip`                  | Determines how the content should be clipped. Defaults to `Clip.none`.                      |
| iconAlignment | `IconAlignment`         | Determines the alignment of the icon within the widgets. Defaults to `IconAlignment.start`. |
| child         | `Map<String, dynamic>`  | The widget to display inside the button.                                                    |

## Example JSON

```json
{
  "type": "elevatedButton",
  "onPressed": {},
  "onLongPress": {},
  "onHover": {},
  "onFocusChange": {},
  "style": {
    "backgroundColor": "primary",
    "foregroundColor": "#FFFFFF"
  },
  "autofocus": false,
  "clipBehavior": "none",
  "child": {
    "type": "text",
    "data": "Click Me!"
  }
}
```