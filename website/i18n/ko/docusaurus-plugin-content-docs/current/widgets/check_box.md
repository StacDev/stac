# CheckBox

Stac CheckBox를 사용하면 JSON을 통해 Flutter CheckBox 위젯을 구축할 수 있습니다.
Flutter의 CheckBox 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/Checkbox-class.html)를 참조하세요.

## 속성

| Property              | Type                     | Description                                                                                        |
|-----------------------|--------------------------|----------------------------------------------------------------------------------------------------|
| id                    | `String?`                | 체크박스의 식별자입니다.                                                                   |
| value                 | `bool?`                  | 체크박스의 현재 값입니다.                                                                 |
| tristate              | `bool`                   | 이 체크박스가 삼상 모드인지 여부입니다. 기본값은 `false`입니다.                                  |
| onChanged             | `Map<String, dynamic>?`  | 값이 변경될 때 호출되는 콜백입니다.                                                |
| mouseCursor           | `StacMouseCursor?`      | 마우스 포인터가 체크박스에 진입하거나 호버링할 때의 커서입니다.                    |
| activeColor           | `String?`                | 이 체크박스가 체크되었을 때 사용할 색상입니다.                                                    |
| fillColor             | `StacMaterialColor?`    | 체크박스의 채우기에 사용할 색상입니다.                                                     |
| checkColor            | `String?`                | 체크 아이콘에 사용할 색상입니다.                                                               |
| focusColor            | `String?`                | 체크박스의 포커스 색상에 사용할 색상입니다.                                                   |
| hoverColor            | `String?`                | 체크박스의 호버 색상에 사용할 색상입니다.                                                   |
| overlayColor          | `StacMaterialColor?`    | 체크박스의 오버레이 색상에 사용할 색상입니다.                                                 |
| splashRadius          | `double?`                | 체크박스 탭 대상의 스플래시 반경입니다.                                                    |
| materialTapTargetSize | `MaterialTapTargetSize?` | 탭 대상의 최소 크기를 구성합니다.                                                     |
| autofocus             | `bool`                   | 다른 항목에 포커스가 없는 경우 이 체크박스가 자동으로 포커스를 받을지 여부입니다. 기본값은 `false`입니다. |
| isError               | `bool`                   | 이 체크박스가 오류 상태인지 여부입니다. 기본값은 `false`입니다.                                   |

## 예제 JSON

```json
{
  "type": "checkBox",
  "id": "checkbox_1",
  "value": true,
  "tristate": false,
  "mouseCursor": "click",
  "activeColor": "#FF0000",
  "fillColor": {
    "type": "materialColor",
    "color": "#00FF00"
  },
  "checkColor": "#0000FF",
  "focusColor": "#FFFF00",
  "hoverColor": "#FF00FF",
  "splashRadius": 20.0,
  "materialTapTargetSize": "padded",
  "autofocus": true,
  "isError": false
}
```
