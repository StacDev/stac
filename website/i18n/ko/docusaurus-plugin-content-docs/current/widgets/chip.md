# Chip

Stac Chip을 사용하면 JSON을 통해 Flutter Chip 위젯을 구축할 수 있습니다.
Flutter의 Chip 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/Chip-class.html)를 참조하세요.

## 속성

| Property                   | Type                           | Description                                                                                    |
|----------------------------|--------------------------------|------------------------------------------------------------------------------------------------|
| avatar                     | `Map<String, dynamic>?`        | 칩의 레이블 앞에 표시할 위젯입니다.                                               |
| label                      | `Map<String, dynamic>`         | 칩의 주요 콘텐츠입니다.                                                               |
| labelStyle                 | `StacTextStyle?`              | 레이블에 사용할 스타일입니다.                                                                |
| labelPadding               | `StacEdgeInsets?`             | 레이블 주변의 패딩입니다.                                                                  |
| deleteIcon                 | `Map<String, dynamic>?`        | 칩의 삭제 아이콘으로 표시할 위젯입니다.                                               |
| onDeleted                  | `Map<String, dynamic>?`        | 삭제 아이콘을 탭할 때 호출되는 콜백입니다.                                    |
| deleteIconColor            | `String?`                      | 삭제 아이콘의 색상입니다.                                                                  |
| deleteButtonTooltipMessage | `String?`                      | 삭제 아이콘의 툴팁에 표시할 메시지입니다.                                     |
| side                       | `StacBorderSide?`             | 칩 주변에 표시할 테두리입니다.                                                         |
| shape                      | `StacRoundedRectangleBorder?` | 칩 테두리의 모양입니다.                                                                |
| clipBehavior               | `Clip`                         | 칩의 클립 동작입니다. 기본값은 `Clip.none`입니다.                                        |
| autofocus                  | `bool`                         | 다른 항목에 포커스가 없는 경우 이 칩이 자동으로 포커스를 받을지 여부입니다. 기본값은 `false`입니다. |
| color                      | `String?`                      | 칩의 색상입니다.                                                                         |
| backgroundColor            | `String?`                      | 칩의 배경 색상입니다.                                                              |
| padding                    | `StacEdgeInsets?`             | 칩 주변의 패딩입니다.                                                                   |
| visualDensity              | `StacVisualDensity?`          | 칩의 시각적 밀도입니다.                                                                |
| materialTapTargetSize      | `MaterialTapTargetSize?`       | 탭 대상의 최소 크기를 구성합니다.                                                 |
| elevation                  | `double?`                      | 칩의 높이입니다.                                                                     |
| shadowColor                | `String?`                      | 칩 그림자의 색상입니다.                                                                |
| surfaceTintColor           | `String?`                      | 칩 표면 틴트의 색상입니다.                                                          |
| iconTheme                  | `StacIconThemeData?`          | 칩 내 아이콘의 테마입니다.                                                               |
| avatarBoxConstraints       | `StacBoxConstraints?`         | 아바타의 제약 조건입니다.                                                                |
| deleteIconBoxConstraints   | `StacBoxConstraints?`         | 삭제 아이콘의 제약 조건입니다.                                                           |

## 예제 JSON

```json
{
  "type": "chip",
  "avatar": {
    "type": "circleAvatar",
    "backgroundColor": "#FF0000",
    "child": {
      "type": "text",
      "data": "A"
    }
  },
  "label": {
    "type": "text",
    "data": "Chip Label"
  },
  "labelStyle": {
    "color": "#000000",
    "fontSize": 14
  },
  "labelPadding": {
    "left": 8,
    "top": 4,
    "right": 8,
    "bottom": 4
  },
  "deleteIcon": {
    "type": "icon",
    "icon": "delete"
  },
  "deleteIconColor": "#FF0000",
  "deleteButtonTooltipMessage": "Delete",
  "side": {
    "color": "#000000",
    "width": 1.0
  },
  "shape": {
    "type": "roundedRectangle",
    "borderRadius": 8.0
  },
  "clipBehavior": "antiAlias",
  "autofocus": false,
  "color": "#FFFFFF",
  "backgroundColor": "#EEEEEE",
  "padding": {
    "left": 8,
    "top": 4,
    "right": 8,
    "bottom": 4
  },
  "visualDensity": {
    "horizontal": 0.0,
    "vertical": 0.0
  },
  "materialTapTargetSize": "padded",
  "elevation": 2.0,
  "shadowColor": "#000000",
  "surfaceTintColor": "#FFFFFF",
  "iconTheme": {
    "color": "#000000",
    "size": 24.0
  },
  "avatarBoxConstraints": {
    "minWidth": 24.0,
    "minHeight": 24.0
  },
  "deleteIconBoxConstraints": {
    "minWidth": 24.0,
    "minHeight": 24.0
  }
}
```
