# DropdownMenu

The Stac DropdownMenu allows you to build a Flutter DropdownMenu widget using JSON.
To know more about the DropdownMenu widget in Flutter, refer to
the [official documentation](https://api.flutter.dev/flutter/material/DropdownMenu-class.html).

## Properties

| Property             | Type                            | Description                                               |
|----------------------|---------------------------------|-----------------------------------------------------------|
| dropdownMenuEntries  | `List<StacDropdownMenuEntries>` | The entries to display in the dropdown menu.              |
| initialSelection     | `dynamic`                       | The initial selection value.                              |
| enabled              | `bool`                          | Whether the dropdown menu is enabled. Defaults to `true`. |
| label                | `Map<String, dynamic>?`         | The label to display for the dropdown menu.               |
| leadingIcon          | `Map<String, dynamic>?`         | The icon to display at the start of the dropdown menu.    |
| trailingIcon         | `Map<String, dynamic>?`         | The icon to display at the end of the dropdown menu.      |
| hintText             | `String?`                       | The hint text to display when no selection is made.       |
| errorText            | `String?`                       | The error text to display when there is an error.         |
| width                | `double?`                       | The width of the dropdown menu.                           |
| menuHeight           | `double?`                       | The height of the dropdown menu.                          |
| inputDecorationTheme | `StacInputDecorationTheme?`     | The theme to use for the input decoration.                |
| textStyle            | `StacTextStyle?`                | The text style to use for the dropdown menu.              |

# DropdownMenuEntry

The Stac DropdownMenuEntry allows you to build a Flutter DropdownMenuEntry widget using JSON.
To know more about the DropdownMenuEntry widget in Flutter, refer to
the [official documentation](https://api.flutter.dev/flutter/material/DropdownMenuEntry-class.html).

## Properties

| Property     | Type                    | Description                                        |
|--------------|-------------------------|----------------------------------------------------|
| value        | `dynamic`               | The value associated with this entry.              |
| label        | `String`                | The label to display for this entry.               |
| enabled      | `bool`                  | Whether this entry is enabled. Defaults to `true`. |
| leadingIcon  | `Map<String, dynamic>?` | The icon to display at the start of this entry.    |
| trailingIcon | `Map<String, dynamic>?` | The icon to display at the end of this entry.      |
| style        | `StacButtonStyle?`      | The style to use for this entry.                   |

## Example JSON

```json
{
  "type": "dropdownMenu",
  "label": {
    "type": "text",
    "data": "Select an option"
  },
  "hintText": "Please select",
  "width": 200,
  "dropdownMenuEntries": [
    {
      "value": "option1",
      "label": "Option 1",
      "leadingIcon": {
        "type": "icon",
        "iconData": "home"
      }
    },
    {
      "value": "option2",
      "label": "Option 2",
      "leadingIcon": {
        "type": "icon",
        "iconData": "settings"
      }
    },
    {
      "value": "option3",
      "label": "Option 3",
      "leadingIcon": {
        "type": "icon",
        "iconData": "favorite"
      }
    }
  ]
}
```6