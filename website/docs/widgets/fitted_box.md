# FittedBox

Mirai FittedBox allows you to build the Flutter FittedBox widget using JSON.
To know more about the FittedBox widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/FittedBox-class.html).

---

## Properties

| Property       | Type                        | Description                                                                          |
| -------------- | --------------------------- | ------------------------------------------------------------------------------------ |
| `fit`          | `BoxFit`                    | Defines how the child should be fitted within the box. Defaults to `BoxFit.contain`. |
| `alignment`    | `MiraiAlignmentDirectional` | Aligns the child within the box. Defaults to `MiraiAlignmentDirectional.center`.     |
| `clipBehavior` | `Clip`                      | Specifies whether and how the content should be clipped. Defaults to `Clip.none`.    |
| `child`        | `Map<String, dynamic>?`     | The child widget, represented as a JSON object, to be positioned and scaled.         |

---

## Enums

### BoxFit

The `fit` property supports the following values:

| Value       | Description                                                                         |
| ----------- | ----------------------------------------------------------------------------------- |
| `fill`      | Stretches the child to fill the box, distorting the aspect ratio if necessary.      |
| `contain`   | Scales the child to fit within the box while maintaining its aspect ratio.          |
| `cover`     | Scales the child to completely cover the box, possibly cropping parts of it.        |
| `fitWidth`  | Scales the child to match the width of the box, possibly overflowing vertically.    |
| `fitHeight` | Scales the child to match the height of the box, possibly overflowing horizontally. |
| `none`      | Positions the child without scaling, potentially allowing it to overflow the box.   |
| `scaleDown` | Scales the child down to fit within the box only if it is larger than the box.      |

---

### MiraiAlignmentDirectional

The `alignment` property determines where the child is positioned within the box:

| Value          | Description                               |
| -------------- | ----------------------------------------- |
| `topStart`     | Aligns the child to the top-start corner. |
| `topCenter`    | Aligns the child to the top-center.       |
| `topEnd`       | Aligns the child to the top-end corner.   |
| `centerStart`  | Aligns the child to the center-start.     |
| `center`       | Centers the child in the box.             |
| `centerEnd`    | Aligns the child to the center-end.       |
| `bottomStart`  | Aligns the child to the bottom-start.     |
| `bottomCenter` | Aligns the child to the bottom-center.    |
| `bottomEnd`    | Aligns the child to the bottom-end.       |

---

### Clip

The `clipBehavior` property determines how the content outside the box is handled:

| Value                    | Description                                                                      |
| ------------------------ | -------------------------------------------------------------------------------- |
| `none`                   | No clipping is applied (default).                                                |
| `hardEdge`               | Clips the content without anti-aliasing.                                         |
| `antiAlias`              | Clips the content with anti-aliasing for smoother edges.                         |
| `antiAliasWithSaveLayer` | Clips the content with anti-aliasing and saves an offscreen buffer for painting. |

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
