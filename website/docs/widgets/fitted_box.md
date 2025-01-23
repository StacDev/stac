# FittedBox

Mirai FittedBox allows you to build the Flutter FittedBox widget using JSON.
To know more about the FittedBox widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/FittedBox-class.html).

---

## Properties

| Property       | Type                        | Description                                                                          |
|----------------|-----------------------------|--------------------------------------------------------------------------------------|
| `fit`          | `BoxFit`                    | Defines how the child should be fitted within the box. Defaults to `BoxFit.contain`. |
| `alignment`    | `MiraiAlignmentDirectional` | Aligns the child within the box. Defaults to `MiraiAlignmentDirectional.center`.     |
| `clipBehavior` | `Clip`                      | Specifies whether and how the content should be clipped. Defaults to `Clip.none`.    |
| `child`        | `Map<String, dynamic>?`     | The child widget, represented as a JSON object, to be positioned and scaled.         |

---

## Example JSON

```json
{
  "type": "fittedBox",
  "fit": "contain",
  "alignment": "center",
  "child": {
    "type": "text",
    "data": "Hello, World!",
    "style": {
      "fontSize": 20,
      "color": "#000000"
    }
  }
}
```
