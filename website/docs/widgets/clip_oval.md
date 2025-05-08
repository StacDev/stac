# ClipOval

Stac ClipOval allows you to build the Flutter ClipOval widget using JSON. It clips its child using an oval shape, which is useful for creating circular or oval UI elements.
To know more about the ClipOval widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/ClipOval-class.html).

## Properties

| Property     | Type                   | Default     | Description                                                 |
|--------------|------------------------|-------------|-------------------------------------------------------------|
| clipBehavior | `Clip`                 | `antiAlias` | The clipping behavior when content extends beyond the oval. |
| child        | `Map<String, dynamic>` | Required    | The widget to clip with an oval shape.                      |


## Example JSON

```json
{
  "type": "clipOval",
  "clipBehavior": "antiAlias",
  "child": {
    "type": "image",
    "src": "https://placehold.co/600x400",
    "width": 200,
    "height": 200,
    "fit": "cover"
  }
}
```