# AlertDialog

Stac AlertDialog를 사용하면 JSON을 통해 Flutter alert dialog 위젯을 구성할 수 있습니다.
Flutter의 alert dialog 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/AlertDialog-class.html)를 참조하세요.

## Properties

| 속성                         | 타입                          | 설명                                                                                  |
|------------------------------|-------------------------------|--------------------------------------------------------------------------------------|
| icon                         | `Map<String, dynamic>?`       | 알림 대화상자에 표시할 아이콘입니다.                                                    |
| iconPadding                  | `StacEdgeInsets?`            | 아이콘 주변의 여백입니다.                                                              |
| iconColor                    | `String?`                     | 아이콘의 색상입니다.                                                                   |
| title                        | `Map<String, dynamic>?`       | 알림 대화상자의 제목 위젯입니다.                                                        |
| titlePadding                 | `StacEdgeInsets?`            | 제목 주변의 여백입니다.                                                                |
| titleTextStyle               | `StacTextStyle?`             | 제목의 텍스트 스타일입니다.                                                             |
| content                      | `Map<String, dynamic>?`       | 알림 대화상자의 내용 위젯입니다.                                                        |
| contentPadding               | `StacEdgeInsets?`            | 내용 주변의 여백입니다.                                                                |
| contentTextStyle             | `StacTextStyle?`             | 내용의 텍스트 스타일입니다.                                                             |
| actions                      | `List<Map<String, dynamic>>?` | 알림 대화상자에 표시할 액션들입니다.                                                     |
| actionsPadding               | `StacEdgeInsets?`            | 액션 주변의 여백입니다.                                                                |
| actionsAlignment             | `MainAxisAlignment?`          | 액션의 정렬 방식입니다.                                                                |
| actionsOverflowAlignment     | `OverflowBarAlignment?`       | 액션의 오버플로우 정렬 방식입니다.                                                       |
| actionsOverflowDirection     | `VerticalDirection?`          | 액션의 오버플로우 방향입니다.                                                           |
| actionsOverflowButtonSpacing | `double?`                     | 오버플로우 버튼 사이의 간격입니다.                                                       |
| buttonPadding                | `StacEdgeInsets?`            | 버튼 주변의 여백입니다.                                                                |
| backgroundColor              | `String?`                     | 알림 대화상자의 배경 색상입니다.                                                        |
| elevation                    | `double?`                     | 알림 대화상자의 고도입니다.                                                             |
| shadowColor                  | `String?`                     | 알림 대화상자의 그림자 색상입니다.                                                      |
| surfaceTintColor             | `String?`                     | 알림 대화상자의 표면 틴트 색상입니다.                                                    |
| semanticLabel                | `String?`                     | 알림 대화상자의 시맨틱 레이블입니다.                                                     |
| insetPadding                 | `StacEdgeInsets`             | 알림 대화상자 주변의 여백입니다. 기본값은 `left: 40, right: 40, top: 24, bottom: 24`입니다. |
| clipBehavior                 | `Clip`                        | 알림 대화상자의 클립 동작입니다. 기본값은 `Clip.none`입니다.                              |
| shape                        | `StacShapeBorder?`           | 알림 대화상자의 모양입니다.                                                             |
| alignment                    | `StacAlignmentGeometry?`     | 알림 대화상자의 정렬 방식입니다.                                                        |
| scrollable                   | `bool`                        | 알림 대화상자의 스크롤 가능 여부입니다. 기본값은 `false`입니다.                           |

## Example JSON

```json
{
  "type": "alertDialog",
  "content": {
    "type": "padding",
    "padding": {
      "top": 0,
      "left": 12,
      "right": 12,
      "bottom": 8
    },
    "child": {
      "type": "text",
      "data": "Discard draft?",
      "align": "center",
      "style": {
        "fontSize": 14
      }
    }
  },
  "actions": [
    {
      "type": "textButton",
      "child": {
        "type": "text",
        "data": "CANCEL"
      },
      "onPressed": {
        "actionType": "navigate",
        "navigationStyle": "pop"
      }
    },
    {
      "type": "sizedBox",
      "width": 8
    },
    {
      "type": "textButton",
      "child": {
        "type": "text",
        "data": "DISCARD"
      },
      "onPressed": {
        "actionType": "navigate",
        "navigationStyle": "pop"
      }
    },
    {
      "type": "sizedBox",
      "width": 12
    }
  ]
}
```