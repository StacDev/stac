# CheckBox

The Mirai CheckBox allows you to build a Flutter CheckBox widget using JSON.
To know more about the CheckBox widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Checkbox-class.html).

## Properties

| Property              | Type                     | Description                                                                                        |
|-----------------------|--------------------------|----------------------------------------------------------------------------------------------------|
| id                    | `String?`                | The identifier for the checkbox.                                                                   |
| value                 | `bool?`                  | The current value of the checkbox.                                                                 |
| tristate              | `bool`                   | Whether this checkbox is in a tristate mode. Defaults to `false`.                                  |
| onChanged             | `Map<String, dynamic>?`  | The callback that is called when the value changes.                                                |
| mouseCursor           | `MiraiMouseCursor?`      | The cursor for a mouse pointer when it enters or is hovering over the checkbox.                    |
| activeColor           | `String?`                | The color to use when this checkbox is checked.                                                    |
| fillColor             | `MiraiMaterialColor?`    | The color to use for the fill of the checkbox.                                                     |
| checkColor            | `String?`                | The color to use for the check icon.                                                               |
| focusColor            | `String?`                | The color to use for the checkbox's focus color.                                                   |
| hoverColor            | `String?`                | The color to use for the checkbox's hover color.                                                   |
| overlayColor          | `MiraiMaterialColor?`    | The color to use for the checkbox's overlay color.                                                 |
| splashRadius          | `double?`                | The splash radius of the checkbox's tap target.                                                    |
| materialTapTargetSize | `MaterialTapTargetSize?` | Configures the minimum size of the tap target.                                                     |
| autofocus             | `bool`                   | Whether this checkbox should focus itself if nothing else is already focused. Defaults to `false`. |
| isError               | `bool`                   | Whether this checkbox is in an error state. Defaults to `false`.                                   |

## Example JSON

```json
{
  "type": "checkBox",
  "id": "checkbox_1",
  "value": true,
  "tristate": false,
  "mouseCursor": "click",
  "activeColor": "#FF0000",
  "fillColor": {
    "type": "materialColor",
    "color": "#00FF00"
  },
  "checkColor": "#0000FF",
  "focusColor": "#FFFF00",
  "hoverColor": "#FF00FF",
  "splashRadius": 20.0,
  "materialTapTargetSize": "padded",
  "autofocus": true,
  "isError": false
}
```