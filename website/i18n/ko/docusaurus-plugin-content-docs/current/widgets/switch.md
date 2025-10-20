# Switch

Stac `Switch` 위젯을 사용하면 JSON을 사용하여 Flutter Switch 위젯을 빌드할 수 있습니다.
Flutter의 Switch 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/Switch-class.html)를 참조하세요.

## Properties

| Property              | Type                    | Description                                                                                                     |
|-----------------------|-------------------------|-----------------------------------------------------------------------------------------------------------------|
| switchType            | `StacSwitchType`       | Switch의 타입입니다.                                                                                         |
| value                 | `bool`                  | 이 스위치가 켜져 있는지 꺼져 있는지 여부입니다.                                                               |
| onChanged             | `Map<String, dynamic>`  | 사용자가 스위치를 켜거나 끌 때 호출됩니다.                                                              |
| autofocus             | `bool`                  | 현재 범위에서 다른 노드에 포커스가 없을 때 이 위젯이 초기 포커스로 선택될지 여부입니다. |
| activeThumbColor      | `String`                | 이 스위치가 켜져 있을 때 사용할 색상입니다.                                                                        |
| activeTrackColor      | `String`                | 이 스위치가 켜져 있을 때 트랙에 사용할 색상입니다.                                                           |
| focusColor            | `String`                | 버튼에 입력 포커스가 있을 때의 색상입니다.                                                         |
| hoverColor            | `String`                | 포인터가 위에 있을 때 버튼의 색상입니다.                                                  |
| inactiveThumbColor    | `String`                | 이 스위치가 꺼져 있을 때 썸에 사용할 색상입니다.                                                          |
| inactiveTrackColor    | `String`                | 이 스위치가 꺼져 있을 때 트랙에 사용할 색상입니다.                                                          |
| onLabelColor          | `String`                | 스위치가 켜져 있을 때 접근성 레이블에 사용할 색상입니다.                                             |
| offLabelColor         | `String`                | 스위치가 꺼져 있을 때 접근성 레이블에 사용할 색상입니다.                                            |
| splashRadius          | `double`                | 원형 잉크 반응의 스플래시 반경입니다.                                                                 |
| dragStartBehavior     | `DragStartBehavior`     | 드래그 시작 동작이 처리되는 방식을 결정합니다.                                                         |
| overlayColor          | `StacMaterialColor`    | 스위치의 색상입니다.                                                                                       |
| thumbColor            | `StacMaterialColor`    | 이 Switch의 썸 색상입니다.                                                                               |
| trackColor            | `StacMaterialColor`    | 이 Switch의 트랙 색상입니다.                                                                              |
| materialTapTargetSize | `MaterialTapTargetSize` | 탭 대상의 최소 크기를 구성합니다.                                                  |
| trackOutlineColor     | `StacMaterialColor`    | 이 Switch의 트랙 아웃라인 색상입니다.                                                                       |
| thumbIcon             | `Map<String, dynamic>`  | 이 스위치의 썸에 사용할 아이콘입니다.                                                                    |
| inactiveThumbImage    | `String`                | 스위치가 꺼져 있을 때 이 스위치의 썸에 사용할 이미지입니다.                                             |
| activeThumbImage      | `String`                | 스위치가 켜져 있을 때 이 스위치의 썸에 사용할 이미지입니다.                                              |
| applyTheme            | `bool`                  | 주변 테마 데이터를 적용할지 여부입니다.                                                                        |
| applyCupertinoTheme   | `bool`                  | 주변 테마 데이터를 적용할지 여부입니다.                                                                        |

## Example JSON

### Example 1: Cupertino Switch

```json
{
  "type": "switch",
  "switchType": "cupertino",
  "value": true
}
```

### Example 2: Adaptive Switch

```json
{
  "type": "switch",
  "switchType": "adaptive",
  "value": true
}
```

### Example 3: Material Switch

```json
{
  "type": "switch",
  "switchType": "material",
  "value": false
}
```
