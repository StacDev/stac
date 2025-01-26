# AutoComplete

The Mirai AutoComplete allows you to build a Flutter AutoComplete widget using JSON.
To know more about the AutoComplete widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Autocomplete-class.html).

## Properties

| Property                 | Type                       | Description                                                                                 |
|--------------------------|----------------------------|---------------------------------------------------------------------------------------------|
| options                  | `List<String>`             | The list of options for the autocomplete.                                                   |
| onSelected               | `Map<String, dynamic>?`    | The callback that is called when an option is selected.                                     |
| optionsMaxHeight         | `double`                   | The maximum height of the options list. Defaults to `200`.                                  |
| optionsViewOpenDirection | `OptionsViewOpenDirection` | The direction in which the options view opens. Defaults to `OptionsViewOpenDirection.down`. |
| initialValue             | `String?`                  | The initial value of the autocomplete field.                                                |

## Example JSON

```json
{
  "type": "autoComplete",
  "options": ["Option 1", "Option 2", "Option 3"],
  "onSelected": {
    "type": "callback",
    "name": "onOptionSelected"
  },
  "optionsMaxHeight": 250,
  "optionsViewOpenDirection": "up",
  "initialValue": "Option 1"
}
```