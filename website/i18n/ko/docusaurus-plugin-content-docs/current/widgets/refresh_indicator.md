# RefreshIndicator

Stac RefreshIndicator를 사용하면 JSON을 사용하여 Flutter RefreshIndicator 위젯을 빌드할 수 있습니다.
Flutter의 RefreshIndicator 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/RefreshIndicator-class.html)를 참조하세요.

## Properties

| Property        | Type                          | Description                                                                                                                              |
|-----------------|-------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| child           | `Map<String, dynamic>?`       | 트리에서 이 위젯 아래의 위젯입니다.                                                                                                |
| displacement    | `double`                      | 자식의 위쪽 또는 아래쪽 가장자리에서 새로고침 표시기가 시작되는 거리입니다. 기본값은 `40`입니다.                                |
| edgeOffset      | `double`                      | 표시기가 시작되는 오프셋입니다. 기본값은 `0`입니다.                                                                                  |
| onRefresh       | `Map<String, dynamic>?`       | 사용자가 새로고침 표시기를 충분히 드래그하여 앱을 새로고침하고 싶다는 것을 나타낼 때 호출되는 콜백입니다. |
| color           | `String?`                     | 새로고침 표시기의 색상입니다.                                                                                                      |
| backgroundColor | `String?`                     | 새로고침 표시기의 배경색입니다.                                                                                           |
| semanticsLabel  | `String?`                     | 새로고침 표시기의 의미론적 레이블입니다.                                                                                            |
| semanticsValue  | `String?`                     | 새로고침 표시기의 의미론적 값입니다.                                                                                            |
| strokeWidth     | `double`                      | 새로고침 표시기의 스트로크 너비입니다. 기본값은 `RefreshProgressIndicator.defaultStrokeWidth`입니다.                                  |
| triggerMode     | `RefreshIndicatorTriggerMode` | 새로고침 표시기가 트리거될 때를 제어하는 모드입니다. 기본값은 `RefreshIndicatorTriggerMode.onEdge`입니다.                   |

## Example JSON

```json
{
  "type": "refreshIndicator",
  "onRefresh": {
    "actionType": "request",
    "url": "https://raw.githubusercontent.com/StacDev/stac/main/examples/stac_gallery/assets/json/list_view_example.json",
    "method": "get",
    "contentType": "application/json"
  }
}
```
