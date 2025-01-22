# Positioned

The Mirai Positioned allows you to build a Flutter positioned widget using JSON.
To know more about the positioned widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Positioned-class.html).

## Properties

| Property       | Type                    | Description                                                                                 |
|----------------|-------------------------|---------------------------------------------------------------------------------------------|
| positionedType | `MiraiPositionedType?`  | The type of positioned widget. Can be `directional`, `fill`, or `fromRect`.                 |
| left           | `double?`               | The distance from the left edge of the parent.                                              |
| top            | `double?`               | The distance from the top edge of the parent.                                               |
| right          | `double?`               | The distance from the right edge of the parent.                                             |
| bottom         | `double?`               | The distance from the bottom edge of the parent.                                            |
| width          | `double?`               | The width of the child.                                                                     |
| height         | `double?`               | The height of the child.                                                                    |
| start          | `double?`               | The distance from the start edge of the parent (for `directional` type).                    |
| end            | `double?`               | The distance from the end edge of the parent (for `directional` type).                      |
| textDirection  | `TextDirection`         | The text direction to use for resolving `start` and `end`. Defaults to `TextDirection.ltr`. |
| rect           | `MiraiRect?`            | The rectangle to position the child (for `fromRect` type).                                  |
| child          | `Map<String, dynamic>?` | The widget to display inside the positioned widget.                                         |

## Example JSON

```json
{
  "type": "positioned",
  "left": 10,
  "top": 20,
  "right": 30,
  "bottom": 40,
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```

## Example JSON for `directional`

```json
{
  "type": "positioned",
  "positionedType": "directional",
  "start": 10,
  "top": 20,
  "width": 100,
  "height": 50,
  "textDirection": "ltr",
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```

### Example JSON for `fill`

```json
{
  "type": "positioned",
  "positionedType": "fill",
  "left": 10,
  "top": 20,
  "right": 30,
  "bottom": 40,
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```

### Example JSON for fromRect

```json
{
  "type": "positioned",
  "positionedType": "fromRect",
  "rect": {
    "left": 10,
    "top": 20,
    "right": 110,
    "bottom": 70
  },
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```