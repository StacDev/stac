# Expanded

The Stac Expanded allows you to build a Flutter expanded widget using JSON.
To know more about the expanded widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Expanded-class.html).

## Properties

| Property | Type                    | Description                                                      |
|----------|-------------------------|------------------------------------------------------------------|
| flex     | `int`                   | The flex factor to use for the expanded widget. Defaults to `1`. |
| child    | `Map<String, dynamic>?` | The widget to display inside the expanded widget.                |

## Example JSON

```json
{
  "type": "expanded",
  "flex": 2,
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```