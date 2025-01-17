# Placeholder

The Mirai `Placeholder` widget allows you to build the Flutter Placeholder widget using JSON.
is used to draw a box that serves as a placeholder in your Flutter UI. It is typically used to represent areas where widgets are yet to be added or for debugging layout constraints.

To learn more about the `Placeholder` widget, refer to the [official Flutter documentation](https://api.flutter.dev/flutter/widgets/Placeholder-class.html).

---

## Properties

| Property         | Type                    | Description                                                                                             |
| ---------------- | ----------------------- | ------------------------------------------------------------------------------------------------------- |
| `color`          | `String?`               | The hex color to paint behind the child. Defaults to `#455A64` (Blue Grey 700).                         |
| `strokeWidth`    | `double?`               | The width of the lines used to draw the placeholder box. Defaults to `2.0`.                             |
| `fallbackWidth`  | `double?`               | The width to use when the placeholder is in a situation with an unbounded width. Defaults to `400.0`.   |
| `fallbackHeight` | `double?`               | The height to use when the placeholder is in a situation with an unbounded height. Defaults to `400.0`. |
| `child`          | `Map<String, dynamic>?` | The widget to be displayed inside the placeholder box.                                                  |

---

## Example JSON

```json
{
  "type": "placeholder",
  "color": "#455A64",
  "strokeWidth": 2.0,
  "fallbackWidth": 400.0,
  "fallbackHeight": 400.0
}
```
