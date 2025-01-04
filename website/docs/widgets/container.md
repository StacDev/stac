# Container

Mirai container allows you to build the Flutter container widget using JSON. 
To know more about the container widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Container-class.html).

## Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| alignment | `MiraiAlignment`  | The alignment of the child within the container.  |
| padding | `MiraiEdgeInsets` | The padding to apply around the child.            |
| decoration | `MiraiBoxDecoration` | The decoration to paint behind the child.         |
| foregroundDecoration | `MiraiBoxDecoration` | The decoration to paint in front of the child.    |
| color | `String` | The hex color to paint behind the child.          |
| width | `double` | The width of the container.                       |
| height | `double` | The height of the container.                      |
| constraints | `MiraiBoxConstraints` | Additional constraints to apply to the container. |
| margin | `MiraiEdgeInsets` | The margin to apply around the container.         |
| child | `Map<String, dynamic>` | The child widget of the container.                |
| clipBehavior | `Clip` | The clip behavior of the container.               |


## Example JSON

```json
{
  "type":  "container",
  "alignment":  "center",
  "padding":  {
    "top":  16.0,
    "bottom":  16.0,
    "left":  16.0,
    "right":  16.0
  },
  "decoration":  {
    "color":  "#FF5733",
    "borderRadius":  {
      "topLeft":  16.0,
      "topRight":  16.0,
      "bottomLeft":  16.0,
      "bottomRight":  16.0
    }
  },
  "width":  200.0,
  "height":  200.0,
  "child":  {
    "type":  "text",
    "data":  "Hello, World!",
    "style":  {
      "color":  "#FFFFFF",
      "fontSize":  24.0
    }
  }
}
```

