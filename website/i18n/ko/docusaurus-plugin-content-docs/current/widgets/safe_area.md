# SafeArea

Stac `SafeArea`를 사용하면 JSON을 사용하여 Flutter SafeArea 위젯을 빌드할 수 있습니다.
Flutter의 SafeArea 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/SafeArea-class.html)를 참조하세요.

## Properties

| Property                  | Type                   | Description                                                                                                                                           |
|---------------------------|------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| child                     | `Map<String, dynamic>` | SafeArea의 자식 위젯입니다.                                                                                                                     |
| left                      | `bool`                 | 왼쪽의 시스템 침입을 피할지 여부입니다.                                                                                                       |
| top                       | `bool`                 | 일반적으로 시스템 상태 표시줄인 화면 상단의 시스템 침입을 피할지 여부입니다.                                                         |
| right                     | `bool`                 | 오른쪽의 시스템 침입을 피할지 여부입니다.                                                                                                      |
| bottom                    | `bool`                 | 화면 하단의 시스템 침입을 피할지 여부입니다.                                                                                  |
| minimum                   | `StacEdgeInsets`      | 적용할 최소 패딩입니다.                                                                                                        |
| maintainBottomViewPadding | `bool`                 | SafeArea가 하단 MediaQueryData.padding 대신 하단 MediaQueryData.viewPadding을 유지해야 하는지 지정합니다. 기본값은 false입니다. |

## Example JSON

```json
{
  "type":  "safeArea",
  "child":  {
    "type":  "text",
    "data":  "Hello, World!",
    "style":  {
      "color":  "#FFFFFF",
      "fontSize":  24.0
    }
  }
}
```
