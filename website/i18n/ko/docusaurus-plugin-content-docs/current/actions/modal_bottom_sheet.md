# Modal Bottom Sheet Action

`StacModalBottomSheetAction` 클래스는 Stac 애플리케이션에서 모달 바텀시트를 표시하는 데 사용됩니다.

## 속성

| Property            | Type                          | Description                                                                 |
|---------------------|-------------------------------|-----------------------------------------------------------------------------|
| widget              | `Map<String, dynamic>?`       | 모달 바텀시트 내부에 표시할 widget.                        |
| request             | `StacNetworkRequest?`        | 모달 바텀시트를 표시하기 전에 수행할 네트워크 요청.    |
| assetPath           | `String?`                     | 모달 바텀시트 내부에 표시할 widget의 asset 경로.      |
| backgroundColor     | `String?`                     | 모달 바텀시트의 배경색.                             |
| barrierLabel        | `String?`                     | 모달 배리어의 시맨틱 레이블.                                   |
| elevation           | `double?`                     | 모달 바텀시트의 높이.                                    |
| shape               | `StacBorder?`                | 모달 바텀시트의 모양.                                        |
| constraints         | `StacBoxConstraints?`        | 모달 바텀시트의 제약 조건.                                 |
| barrierColor        | `String?`                     | 모달 배리어의 색상.                                             |
| isScrollControlled  | `bool`                        | 모달 바텀시트가 스크롤 제어되는지 여부. 기본값은 `false`.   |
| useRootNavigator    | `bool`                        | 루트 네비게이터를 사용할지 여부. 기본값은 `false`.                     |
| isDismissible       | `bool`                        | 모달 바텀시트를 닫을 수 있는지 여부. 기본값은 `true`.          |
| enableDrag          | `bool`                        | 모달 바텀시트를 드래그할 수 있는지 여부. 기본값은 `true`.          |
| showDragHandle      | `bool?`                       | 모달 바텀시트에 드래그 핸들을 표시할지 여부.                    |
| useSafeArea         | `bool`                        | 안전 영역을 사용할지 여부. 기본값은 `false`.                          |

## 예제 JSON

### Widget JSON을 사용한 모달 바텀시트

```json
{
  "actionType": "showModalBottomSheet",
  "widget": {
    "type": "container",
    "height": 200,
    "color": "amber",
    "child": {
      "type": "center",
      "child": {
        "type": "column",
        "mainAxisAlignment": "center",
        "mainAxisSize": "min",
        "children": [
          {
            "type": "text",
            "data": "Modal BottomSheet"
          },
          {
            "type": "elevatedButton",
            "child": {
              "type": "text",
              "data": "Close BottomSheet"
            },
            "onPressed": {
              "actionType": "pop"
            }
          }
        ]
      }
    }
  }
}
```

### Asset Path를 사용한 모달 바텀시트

```json
{
  "actionType": "showModalBottomSheet",
  "assetPath": "assets/widgets/modal_bottom_sheet.json"
}
```

### Network Request를 사용한 모달 바텀시트

```json
{
  "actionType": "showModalBottomSheet",
  "request": {
    "url": "https://example.com/api",
    "method": "get"
  }
}
```
