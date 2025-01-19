# LimitedBox

Mirai LimitedBox allows you to build the Flutter LimitedBox widget using JSON.
To know more about the LimitedBox widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/LimitedBox-class.html).

## Properties

| Property    | Type                    | Description                                                                                          |
| ----------- | ----------------------- | ---------------------------------------------------------------------------------------------------- |
| `maxHeight` | `double`                | The maximum height for the child if the parent's height is unbounded. Defaults to `double.infinity`. |
| `maxWidth`  | `double`                | The maximum width for the child if the parent's width is unbounded. Defaults to `double.infinity`.   |
| `child`     | `Map<String, dynamic>?` | The child widget represented as a JSON object.                                                       |

---

## Example JSON

### Example 1: Limited Box with Default Constraints

```json
{
  "type": "limitedBox",
  "child": {
    "type": "container",
    "width": 100,
    "height": 100,
    "color": "#FF0000"
  }
}
```

### Example 2: Limited Box with Custom Constraints

```json
{
  "type": "limitedBox",
  "maxHeight": 200.0,
  "maxWidth": 300.0,
  "child": {
    "type": "text",
    "data": "Hello, World! from Limited Box",
    "style": {
      "fontSize": 16,
      "color": "#000000"
    }
  }
}
```
