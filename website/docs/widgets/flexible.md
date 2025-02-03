# Flexible

The Stac Flexible allows you to build a Flutter flexible widget using JSON.
To know more about the flexible widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Flexible-class.html).

## Properties

| Property | Type                    | Description                                                                              |
|----------|-------------------------|------------------------------------------------------------------------------------------|
| child    | `Map<String, dynamic>?` | The widget to display inside the flexible widget.                                        |
| flex     | `int`                   | The flex factor to use for the flexible widget. Defaults to `1`.                         |
| fit      | `FlexFit`               | How the child should be inscribed into the available space. Defaults to `FlexFit.loose`. |

## Example JSON

```json
{
  "type": "flexible",
  "flex": 2,
  "fit": "tight",
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```