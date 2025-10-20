# PageView

Stac PageView를 사용하면 JSON을 사용하여 Flutter PageView 위젯을 빌드할 수 있습니다.
Flutter의 PageView 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/PageView-class.html)를 참조하세요.

## Properties

| Property               | Type                         | Description                                                                   |
|------------------------|------------------------------|-------------------------------------------------------------------------------|
| scrollDirection        | `Axis`                       | 페이지 뷰가 스크롤되는 축입니다. 기본값은 `Axis.horizontal`입니다.    |
| reverse                | `bool`                       | 페이지 뷰가 역방향으로 스크롤되는지 여부입니다. 기본값은 `false`입니다.  |
| physics                | `StacScrollPhysics?`        | 스크롤 뷰의 물리입니다.                                              |
| pageSnapping           | `bool`                       | 페이지 뷰가 페이지 경계에 스냅되어야 하는지 여부입니다. 기본값은 `true`입니다.     |
| onPageChanged          | `Map<String, dynamic>?`      | 페이지가 변경될 때 호출되는 콜백입니다.                            |
| dragStartBehavior      | `DragStartBehavior`          | 드래그 시작 동작입니다. 기본값은 `DragStartBehavior.start`입니다.               |
| allowImplicitScrolling | `bool`                       | 암묵적 스크롤을 허용할지 여부입니다. 기본값은 `false`입니다.                     |
| restorationId          | `String?`                    | 스크롤 오프셋을 저장하고 복원하기 위한 복원 ID입니다.                     |
| clipBehavior           | `Clip`                       | 페이지 뷰의 클립 동작입니다. 기본값은 `Clip.hardEdge`입니다.              |
| padEnds                | `bool`                       | 페이지 뷰의 끝을 패딩할지 여부입니다. 기본값은 `true`입니다.                 |
| initialPage            | `int`                        | 표시할 초기 페이지입니다. 기본값은 `0`입니다.                                    |
| keepPage               | `bool`                       | 현재 페이지를 저장할지 여부입니다. 기본값은 `true`입니다.                         |
| viewportFraction       | `double`                     | 각 페이지가 차지해야 하는 뷰포트의 비율입니다. 기본값은 `1.0`입니다. |
| children               | `List<Map<String, dynamic>>` | 트리에서 이 위젯 아래의 위젯들입니다. 기본값은 빈 리스트입니다.         |

## Example JSON

```json
{
  "type": "pageView",
  "children": [
    {
      "type": "container",
      "color": "#D9D9D9",
      "child": {
        "type": "center",
        "child": {
          "type": "text",
          "data": "Page 1",
          "style": {
            "fontSize": 23,
            "fontWeight": "w400"
          }
        }
      }
    },
    {
      "type": "container",
      "color": "#FC3F1B",
      "child": {
        "type": "center",
        "child": {
          "type": "text",
          "data": "Page 2",
          "style": {
            "fontSize": 23,
            "fontWeight": "w400"
          }
        }
      }
    },
    {
      "type": "container",
      "color": "#D9D9D9",
      "child": {
        "type": "center",
        "child": {
          "type": "text",
          "data": "Page 3",
          "style": {
            "fontSize": 23,
            "fontWeight": "w400"
          }
        }
      }
    }
  ]
}
```
