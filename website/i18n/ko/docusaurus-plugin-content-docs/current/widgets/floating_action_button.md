# FloatingActionButton

Stac Floating Action Button을 사용하면 JSON을 사용하여 Flutter floating action button widget을 빌드할 수 있습니다.
Flutter의 floating action button widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html)를 참조하세요.

## 속성

| Property                 | Type                       | Description                                                    |
|--------------------------|----------------------------|----------------------------------------------------------------|
| onPressed                | `Map<String, dynamic>?`    | 버튼을 탭했을 때 호출되는 callback입니다.                                   |
| textStyle                | `StacTextStyle?`          | 버튼의 label에 적용할 text style입니다.                                  |
| buttonType               | `FloatingActionButtonType` | floating action button의 타입입니다. 기본값은 `FloatingActionButtonType.small`입니다. |
| autofocus                | `bool`                     | 페이지가 로드될 때 버튼에 focus를 맞출지 여부입니다. 기본값은 `false`입니다.             |
| icon                     | `Map<String, dynamic>?`    | 버튼 내부에 표시할 icon입니다.                                            |
| backgroundColor          | `String?`                  | 버튼을 칠할 색상입니다.                                                  |
| foregroundColor          | `String?`                  | 버튼의 icon을 칠할 색상입니다.                                            |
| focusColor               | `String?`                  | 버튼에 input focus가 있을 때 칠할 색상입니다.                                |
| hoverColor               | `String?`                  | pointer가 버튼 위에 있을 때 칠할 색상입니다.                                  |
| splashColor              | `String?`                  | 버튼을 눌렀을 때 splash 효과를 칠할 색상입니다.                                |
| extendedTextStyle        | `StacTextStyle?`          | extended 버튼의 label에 적용할 text style입니다.                         |
| elevation                | `double?`                  | 버튼의 elevation입니다.                                               |
| focusElevation           | `double?`                  | 버튼에 input focus가 있을 때의 elevation입니다.                            |
| hoverElevation           | `double?`                  | pointer가 버튼 위에 있을 때의 elevation입니다.                              |
| disabledElevation        | `double?`                  | 버튼이 비활성화되었을 때의 elevation입니다.                                   |
| highlightElevation       | `double?`                  | 버튼을 눌렀을 때의 elevation입니다.                                        |
| extendedIconLabelSpacing | `double?`                  | extended 버튼에서 icon과 label 사이의 간격입니다.                           |
| enableFeedback           | `bool?`                    | 음향 및/또는 햅틱 피드백을 제공할지 여부입니다.                                   |
| tooltip                  | `String?`                  | 사용자가 버튼을 길게 누를 때 표시할 텍스트입니다.                                  |
| heroTag                  | `Object?`                  | hero animation에 사용할 tag입니다.                                     |
| child                    | `Map<String, dynamic>`     | 버튼 내부에 표시할 widget입니다.                                          |

## 예제 JSON

```json
{
  "type": "floatingActionButton",
  "onPressed": {},
  "textStyle": {
    "fontSize": 16,
    "color": "#FFFFFF"
  },
  "buttonType": "small",
  "autofocus": false,
  "icon": {
    "type": "icon",
    "icon": "add"
  },
  "backgroundColor": "#FFC107",
  "foregroundColor": "#000000",
  "focusColor": "#FF5722",
  "hoverColor": "#FF9800",
  "splashColor": "#FFEB3B",
  "extendedTextStyle": {
    "fontSize": 14,
    "color": "#FFFFFF"
  },
  "elevation": 6.0,
  "focusElevation": 8.0,
  "hoverElevation": 10.0,
  "disabledElevation": 2.0,
  "highlightElevation": 12.0,
  "extendedIconLabelSpacing": 8.0,
  "enableFeedback": true,
  "tooltip": "Add Item",
  "heroTag": "fab1",
  "child": {
    "type": "text",
    "data": "Add"
  }
}
```
