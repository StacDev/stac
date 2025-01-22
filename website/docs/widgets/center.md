# Center

The Mirai Center allows you to build a Flutter center widget using JSON.
To know more about the center widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Center-class.html).

## Properties

| Property     | Type                    | Description                                         |
|--------------|-------------------------|-----------------------------------------------------|
| widthFactor  | `double?`               | The factor by which to multiply the child's width.  |
| heightFactor | `double?`               | The factor by which to multiply the child's height. |
| child        | `Map<String, dynamic>?` | The widget to display inside the center.            |

## Example JSON

```json
{
  "type": "center",
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```