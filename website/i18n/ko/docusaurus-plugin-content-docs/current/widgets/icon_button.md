# IconButton

Stac Icon Button을 사용하면 JSON을 통해 Flutter icon button 위젯을 생성할 수 있습니다.
Flutter의 icon button 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/IconButton-class.html)를 참조하세요.

## Properties

| Property       | Type                    | Description                                                                        |
|----------------|-------------------------|------------------------------------------------------------------------------------|
| iconSize       | `double?`               | 버튼 내부 아이콘의 크기입니다.                                            |
| padding        | `StacEdgeInsets?`      | 버튼 내부의 패딩입니다.                                                     |
| alignment      | `StacAlignment?`       | 버튼 내에서 아이콘을 정렬하는 방법입니다.                                  |
| splashRadius   | `double?`               | 스플래시 효과의 반경입니다.                                                   |
| color          | `String?`               | 아이콘을 칠할 색상입니다.                                                       |
| focusColor     | `String?`               | 버튼이 입력 포커스를 가질 때 칠할 색상입니다.                         |
| hoverColor     | `String?`               | 포인터가 버튼 위에 있을 때 칠할 색상입니다.                  |
| highlightColor | `String?`               | 버튼이 눌렸을 때 칠할 색상입니다.                                  |
| splashColor    | `String?`               | 버튼이 눌렸을 때 스플래시 효과를 칠할 색상입니다.                   |
| disabledColor  | `String?`               | 버튼이 비활성화되었을 때 아이콘을 칠할 색상입니다.                           |
| onPressed      | `Map<String, dynamic>?` | 버튼이 탭될 때 호출되는 콜백입니다.                             |
| autofocus      | `bool`                  | 페이지가 로드될 때 버튼에 포커스를 맞출지 여부입니다. 기본값은 `false`입니다. |
| tooltip        | `String?`               | 사용자가 버튼을 길게 누를 때 표시할 텍스트입니다.                         |
| enableFeedback | `bool?`                 | 음향 및/또는 햅틱 피드백을 제공할지 여부입니다.                                |
| constraints    | `StacBoxConstraints?`  | 버튼의 제약 조건입니다.                                                    |
| style          | `StacButtonStyle?`     | 버튼에 적용할 스타일입니다.                                                  |
| isSelected     | `bool?`                 | 버튼이 선택되었는지 여부입니다.                                                    |
| selectedIcon   | `Map<String, dynamic>?` | 버튼이 선택되었을 때 표시할 아이콘입니다.                                   |
| icon           | `Map<String, dynamic>?` | 버튼 내부에 표시할 아이콘입니다.                                             |

## Example JSON

```json
{
  "type": "iconButton",
  "iconSize": 24.0,
  "padding": {
    "left": 8.0,
    "top": 8.0,
    "right": 8.0,
    "bottom": 8.0
  },
  "alignment": "center",
  "splashRadius": 20.0,
  "color": "#000000",
  "focusColor": "#FFC107",
  "hoverColor": "#FF9800",
  "highlightColor": "#FF5722",
  "splashColor": "#FFEB3B",
  "disabledColor": "#BDBDBD",
  "onPressed": {},
  "autofocus": false,
  "tooltip": "Add Item",
  "enableFeedback": true,
  "constraints": {
    "minWidth": 48.0,
    "minHeight": 48.0
  },
  "style": {
    "backgroundColor": "#FFC107",
    "foregroundColor": "#000000"
  },
  "isSelected": false,
  "selectedIcon": {
    "type": "icon",
    "icon": "check"
  },
  "icon": {
    "type": "icon",
    "icon": "add"
  }
}
```
