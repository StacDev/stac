# RadioGroup

Stac radioGroup을 사용하면 JSON을 사용하여 Flutter Radio 위젯들을 빌드할 수 있습니다.
Flutter의 Radio 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/Radio-class.html)를 참조하세요.

## RadioGroup Properties

| Property   | Type                   | Description                                                |
|------------|------------------------|------------------------------------------------------------|
| id         | `String`               | 라디오의 선택된 값을 저장하는 데 사용될 id입니다.   |
| groupValue | `dynamic`              | 라디오 버튼 그룹의 현재 선택된 값입니다. |
| child      | `Map<String, dynamic>` | radioGroup의 자식입니다.                                   |

## Radio Properties

| Property                   | Type                    | Description                                                                                                     |
|----------------------------|-------------------------|-----------------------------------------------------------------------------------------------------------------|
| radioType                  | `StacRadioType`        | 라디오의 타입입니다.                                                                                              |
| value                      | `dynamic`               | 이 라디오가 나타내는 값입니다.                                                                            |
| mouseCursor                | `StacMouseCursor`      | 마우스 포인터가 라디오에 진입하거나 위에 있을 때의 커서입니다.                                    |
| toggleable                 | `bool`                  | 선택된 상태에서 선택 취소하려면 true로 설정합니다.                                                           |
| activeColor                | `String`                | 이 라디오 버튼이 선택되었을 때 사용할 색상입니다.                                                            |
| inactiveColor              | `String`                | 이 라디오 버튼이 선택되지 않았을 때 사용할 색상입니다.                                                        |
| fillColor                  | `String`                | 모든 WidgetStates에서 라디오 버튼을 채우는 색상입니다.                                                     |
| focusColor                 | `String`                | 라디오에 입력 포커스가 있을 때 Material의 색상입니다.                                                 |
| hoverColor                 | `String`                | 포인터가 위에 있을 때 라디오의 Material 색상입니다.                                          |
| overlayColor               | `String`                | 라디오의 Material 색상입니다.                                                             |
| splashRadius               | `double`                | 원형 Material 잉크 반응의 스플래시 반경입니다.                                                        |
| materialTapTargetSize      | `MaterialTapTargetSize` | 탭 대상의 최소 크기를 구성합니다.                                                  |
| visualDensity              | `StacVisualDensity`    | 라디오의 레이아웃이 얼마나 컴팩트할지 정의합니다.                                                 |
| autofocus                  | `bool`                  | 현재 범위에서 다른 노드에 포커스가 없을 때 이 위젯이 초기 포커스로 선택될지 여부입니다. |
| useCheckmarkStyle          | `bool`                  | 라디오가 체크박스 스타일로 표시될지 아니면 기본 iOS 라디오 스타일로 표시될지 제어합니다.                         |
| useCupertinoCheckmarkStyle | `bool`                  | iOS 스타일 라디오에서 체크마크 스타일을 사용할지 제어합니다.                                             |


## Example JSON

```json
{
  "type": "radioGroup",
  "child": {
    "type": "column",
    "children": [
      {
        "type": "listTile",
        "leading": {
          "type": "radio",
          "radioType": "adaptive",
          "value": "1",
          "groupValue": "1"
        },
        "title": {
          "type": "text",
          "data": "Male",
          "align": "center",
          "style": {
            "fontSize": 21
          }
        }
      },
      {
        "type": "listTile",
        "leading": {
          "type": "radio",
          "radioType": "adaptive",
          "value": "2",
          "groupValue": "1"
        },
        "title": {
          "type": "text",
          "data": "Female",
          "align": "center",
          "style": {
            "fontSize": 21
          }
        }
      },
      {
        "type": "listTile",
        "leading": {
          "type": "radio",
          "radioType": "adaptive",
          "value": "3",
          "groupValue": "1"
        },
        "title": {
          "type": "text",
          "data": "Other",
          "align": "center",
          "style": {
            "fontSize": 21
          }
        }
      }
    ]
  }
}
```

