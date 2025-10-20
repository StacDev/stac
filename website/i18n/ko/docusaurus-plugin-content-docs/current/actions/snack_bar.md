# SnackBar

Stac snackBar를 사용하면 JSON을 통해 Flutter SnackBar를 표시할 수 있습니다.
Flutter의 SnackBar widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/SnackBar-class.html)를 참조하세요.

## SnackBar 속성

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| content | `Map<String, dynamic>` | 스낵바의 주요 콘텐츠. |
| backgroundColor | `String` | 스낵바의 배경색. |
| elevation | `double` | 스낵바를 배치할 z 좌표. 스낵바 아래 그림자의 크기를 제어합니다. |
| margin | `StacEdgeInsets` | 스낵바를 둘러싼 빈 공간. |
| padding | `StacEdgeInsets` | 스낵바의 콘텐츠와 선택적 action에 적용할 패딩 양. |
| width | `double` | 스낵바의 너비. |
| shape | `StacShapeBorder` | 스낵바의 모양. |
| hitTestBehavior | `HitTestBehavior` | margin을 포함한 스낵바 영역이 hit test 중에 어떻게 동작할지 정의합니다. |
| behavior | `SnackBarBehavior` | 스낵바의 동작 및 위치를 정의합니다. |
| action | `StacSnackBarAction` | 사용자가 스낵바를 기반으로 수행할 수 있는 action. |
| actionOverflowThreshold | `double` | action widget이 새 줄로 넘어가기 전 너비의 백분율 임계값. |
| showCloseIcon | `bool` | 닫기 아이콘 widget을 포함할지 여부. |
| closeIconColor | `String` | 닫기 아이콘이 보이는 경우 선택적 색상. |
| duration | `StacDuration` | 스낵바가 보이는 시간. |
| onVisible | `Map<String, dynamic>` | 스낵바가 처음 보일 때 호출됩니다. |
| dismissDirection | `DismissDirection` | SnackBar를 닫을 수 있는 방향. |
| clipBehavior | `Clip` | 이 옵션에 따라 콘텐츠가 잘립니다(또는 잘리지 않습니다). |

## SnackBarAction 속성

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| textColor | `String`  | 버튼 레이블 색상. |
| disabledTextColor | `String` | 버튼 비활성화 레이블 색상. |
| backgroundColor | `String` | 버튼 배경 채우기 색상. |
| disabledBackgroundColor | `String` | 버튼 비활성화 배경 색상. |
| label | `String` | 버튼 레이블. |
| onPressed | `Map<String, dynamic>` | 버튼을 눌렀을 때 호출될 콜백. |

## 예제 JSON

```json
{
  "actionType": "showSnackBar",
  "content": {
    "type": "text",
    "data": "This is a Snackbar"
  },
  "action": {
    "label": "Done",
    "textColor": "#73C2FB",
    "onPressed": {}
  },
  "behavior": "floating"
}
```
