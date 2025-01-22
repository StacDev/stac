# FractionallySizedBox

The Mirai FractionallySizedBox allows you to build a Flutter fractionally sized box widget using JSON.
To know more about the fractionally sized box widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/FractionallySizedBox-class.html).

## Properties

| Property     | Type                    | Description                                                                 |
|--------------|-------------------------|-----------------------------------------------------------------------------|
| alignment    | `MiraiAlignment?`       | The alignment of the child within the fractionally sized box.               |
| widthFactor  | `double?`               | The fraction of the available width to use.                                 |
| heightFactor | `double?`               | The fraction of the available height to use.                                |
| child        | `Map<String, dynamic>?` | The widget to display inside the fractionally sized box.                    |

## Example JSON

```json
{
  "type": "fractionallySizedBox",
  "alignment": "center",
  "widthFactor": 0.5,
  "heightFactor": 0.5,
  "child": {
    "type": "container",
    "color": "#FF5733",
    "child": {
      "type": "text",
      "data": "Hello, World!"
    }
  }
}
```