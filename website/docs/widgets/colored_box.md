# ColoredBox

The Stac Colored Box allows you to build a Flutter colored box widget using JSON.
To know more about the colored box widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html).

## Properties

| Property | Type                    | Description                                      |
|----------|-------------------------|--------------------------------------------------|
| color    | `String`                | The color to paint the background of the box.    |
| child    | `Map<String, dynamic>?` | The widget to display inside the colored box.    |

## Example JSON

```json
{
  "type": "coloredBox",
  "color": "#FF0000",
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```