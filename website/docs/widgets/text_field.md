# TextField

The Mirai TextField allows you to build a Flutter text field widget using JSON. To know more about the text field widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/TextField-class.html).

## Properties

| Property           | Type                        | Description                                                                    |
|--------------------|-----------------------------|--------------------------------------------------------------------------------|
| decoration         | `MiraiInputDecoration?`     | The decoration to show around the text field.                                  |
| initialValue       | `String`                    | The initial value to be set in the text field.                                 |
| keyboardType       | `MiraiTextInputType?`       | The type of keyboard to use for editing the text.                              |
| textInputAction    | `TextInputAction?`          | The action button to use for the keyboard.                                     |
| textCapitalization | `TextCapitalization`        | How the text should be capitalized.                                            |
| style              | `MiraiTextStyle?`           | The style to use for the text being edited.                                    |
| textAlign          | `TextAlign`                 | How the text should be aligned horizontally.                                   |
| textAlignVertical  | `MiraiTextAlignVertical?`   | How the text should be aligned vertically.                                     |
| textDirection      | `TextDirection?`            | The direction in which the text flows.                                         |
| readOnly           | `bool`                      | Whether the text field is read-only.                                           |
| showCursor         | `bool?`                     | Whether to show the cursor.                                                    |
| expands            | `bool`                      | Whether the text field should expand to fill its parent.                       |
| autofocus          | `bool`                      | Whether the text field should focus itself if nothing else is already focused. |
| obscuringCharacter | `String`                    | The character to use when obscuring text.                                      |
| maxLines           | `int?`                      | The maximum number of lines for the text to span.                              |
| minLines           | `int?`                      | The minimum number of lines for the text to span.                              |
| maxLength          | `int?`                      | The maximum number of characters to allow in the text field.                   |
| obscureText        | `bool`                      | Whether to hide the text being edited.                                         |
| enableSuggestions  | `bool`                      | Whether to show input suggestions as the user types.                           |
| enabled            | `bool?`                     | Whether the text field is enabled.                                             |
| cursorWidth        | `double`                    | The width of the cursor.                                                       |
| cursorHeight       | `double?`                   | The height of the cursor.                                                      |
| cursorColor        | `String?`                   | The color of the cursor.                                                       |
| hintText           | `String?`                   | The hint text to display when the text field is empty.                         |
| inputFormatters    | `List<MiraiInputFormatter>` | The list of input formatters to apply to the text field.                       |

## Example JSON

```json
{
  "type": "textField",
  "initialValue": "Enter text here",
  "decoration": {
    "hintText": "Enter your name"
  },
  "style": {
    "color": "#000000",
    "fontSize": 16.0
  },
  "textAlign": "center",
  "obscureText": false,
  "maxLength": 50
}