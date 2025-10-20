# InkWell

**Stac InkWell**을 사용하면 JSON을 통해 Flutter `InkWell` 위젯을 생성할 수 있습니다.
Flutter의 `InkWell` 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/InkWell-class.html)를 참조하세요.


## 속성
| Property                | Type                         | Description                                                                 |
|-------------------------|------------------------------|-----------------------------------------------------------------------------|
| `child`                 | `Map<String, dynamic>?`      | 이 InkWell 아래의 위젯입니다.     |
| `onTap`                 | `Map<String, dynamic>?`      | 사용자가 InkWell을 탭할 때 호출됩니다.                                     |
| `onDoubleTap`           | `Map<String, dynamic>?`      | 사용자가 InkWell을 더블 탭할 때 호출됩니다.                              |
| `onLongPress`           | `Map<String, dynamic>?`      | 사용자가 오랫동안 누르고 있을 때 호출됩니다.                |
| `onTapDown`             | `Map<String, dynamic>?`      | 탭 제스처가 시작될 때 호출됩니다.                                          |
| `onTapUp`               | `Map<String, dynamic>?`      | 탭 제스처가 떼어질 때 호출됩니다.                                       |
| `onTapCancel`           | `Map<String, dynamic>?`      | 탭 제스처가 중단될 때 호출됩니다.                                      |
| `onSecondaryTap`        | `Map<String, dynamic>?`      | 보조 탭(예: 데스크톱에서 오른쪽 클릭)에 대해 호출됩니다.                 |
| `onSecondaryTapUp`      | `Map<String, dynamic>?`      | 보조 탭이 떼어질 때 호출됩니다.                                     |
| `onSecondaryTapDown`    | `Map<String, dynamic>?`      | 보조 탭 제스처가 시작될 때 호출됩니다.                                |
| `onSecondaryTapCancel`  | `Map<String, dynamic>?`      | 보조 탭 제스처가 중단될 때 호출됩니다.                            |
| `onHighlightChanged`    | `Map<String, dynamic>?`      | InkWell 하이라이트가 변경될 때(눌린 상태) 호출됩니다.                 |
| `onHover`               | `Map<String, dynamic>?`      | 포인터가 위젯 영역에 진입하거나 벗어날 때 호출됩니다.                     |
| `mouseCursor`           | `StacMouseCursor?`           | InkWell 위로 마우스를 가져갈 때 마우스 커서를 정의합니다.                  |
| `focusColor`            | `String?`                    | 포커스 하이라이트의 색상입니다.                                              |
| `hoverColor`            | `String?`                    | 포인터가 InkWell 위에 있을 때의 색상입니다.                              |
| `highlightColor`        | `String?`                    | InkWell이 눌렸을 때의 색상입니다.                                         |
| `overlayColor`          | `String?`                    | 자식 위의 리플 효과 색상입니다.                                        |
| `splashColor`           | `String?`                    | 리플의 스플래시 색상입니다.                                            |
| `radius`                | `double?`                    | 스플래시 반경을 정의합니다.                                                 |
| `borderRadius`          | `StacBorderRadius?`          | 리플 효과에 대한 둥근 모서리를 설정합니다.                                |
| `customBorder`          | `StacBorder?`                | 클리핑 및 리플에 대한 사용자 정의 테두리 모양입니다.                               |
| `enableFeedback`        | `@Default(true) bool`        | 탭할 때 피드백(예: 소리, 진동)을 재생할지 여부입니다.                  |
| `excludeFromSemantics`  | `@Default(false) bool`       | 스크린 리더와 같은 접근성 도구에서 제외할지 여부입니다.           |
| `canRequestFocus`       | `@Default(true) bool`        | 이 위젯이 포커스를 요청할 수 있는지 여부입니다.                                     |
| `onFocusChange`         | `Map<String, dynamic>?`      | 포커스가 변경될 때의 콜백입니다.                                       |
| `autofocus`             | `@Default(false) bool`       | 위젯이 빌드될 때 자동으로 포커스됩니다.                            |
| `hoverDuration`         | `StacDuration?`              | 호버 애니메이션 효과의 지속 시간입니다.                                   |

## 예제 JSON

```json
{
    "type": "inkWell",
    "child": {
        "type": "padding",
        "padding": {
            "top": 20,
            "bottom": 20,
            "right": 20,
            "left": 20
        },
        "child": {
            "type": "text",
            "data": "Hello, World! from Inkwell",
            "textAlign": "center"
        }
    },
    "splashColor": "#E1BEE7",
    "borderRadius": {
        "topLeft": 20,
        "topRight": 20,
        "bottomLeft": 20,
        "bottomRight": 20
    },
    "radius": 20,
    "hoverDuration": {
        "seconds": 10
    },
    "onTap": {}
}
```
