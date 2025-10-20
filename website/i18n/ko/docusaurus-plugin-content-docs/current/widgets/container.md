# Container

Stac container를 사용하면 JSON을 사용하여 Flutter container widget을 구축할 수 있습니다.
Flutter의 container widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/Container-class.html)를 참조하세요.

## Properties

| Property             | Type                   | Description                                       |
|----------------------|------------------------|---------------------------------------------------|
| alignment            | `StacAlignment`       | Container 내에서 child의 정렬 방식입니다.  |
| padding              | `StacEdgeInsets`      | Child 주위에 적용할 padding입니다.            |
| decoration           | `StacBoxDecoration`   | Child 뒤에 그릴 decoration입니다.         |
| foregroundDecoration | `StacBoxDecoration`   | Child 앞에 그릴 decoration입니다.    |
| color                | `String`               | Child 뒤에 그릴 hex color입니다.          |
| width                | `double`               | Container의 너비입니다.                       |
| height               | `double`               | Container의 높이입니다.                      |
| constraints          | `StacBoxConstraints`  | Container에 적용할 추가 constraints입니다. |
| margin               | `StacEdgeInsets`      | Container 주위에 적용할 margin입니다.         |
| child                | `Map<String, dynamic>` | Container의 child widget입니다.                |
| clipBehavior         | `Clip`                 | Container의 clip 동작 방식입니다.               |


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

