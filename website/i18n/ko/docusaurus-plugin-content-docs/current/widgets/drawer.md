# Drawer

Stac Drawer를 사용하면 JSON을 이용하여 Flutter Drawer widget을 구성할 수 있습니다.
Flutter의 Drawer widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/Drawer-class.html)를 참조하세요.

## Properties

| Property         | Type                | Description                                                        |
|------------------|---------------------|--------------------------------------------------------------------|
| backgroundColor  | `String?`           | drawer의 배경색입니다.                                |
| elevation        | `double?`           | drawer를 배치할 z-coordinate입니다.                    |
| shadowColor      | `String?`           | drawer 그림자의 색상입니다.                                  |
| surfaceTintColor | `String?`           | drawer의 surface tint 색상입니다.                              |
| shape            | `StacShapeBorder?`  | drawer의 모양입니다.                                           |
| width            | `double?`           | drawer의 너비입니다.                                           |
| child            | `Map<String, dynamic>?` | 트리에서 이 widget 아래에 있는 widget입니다.                     |
| semanticLabel    | `String?`           | drawer의 semantic label입니다.                                 |
| clipBehavior     | `Clip?`             | drawer의 clip 동작입니다.                                   |

## Example JSON

```json
{
  "type": "drawer",
  "backgroundColor": "#FFFFFF",
  "elevation": 16.0,
  "shadowColor": "#000000",
  "surfaceTintColor": "#F2F2F2",
  "shape": {
    "type": "roundedRectangleBorder",
    "borderRadius": 16
  },
  "width": 304.0,
  "semanticLabel": "Navigation Drawer",
  "clipBehavior": "antiAlias",
  "child": {
    "type": "column",
    "children": [
      {
        "type": "text",
        "data": "Drawer Header"
      },
      {
        "type": "text",
        "data": "Item 1"
      },
      {
        "type": "text",
        "data": "Item 2"
      }
    ]
  }
}
```
