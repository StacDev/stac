# CustomScrollView

Stac CustomScrollView를 사용하면 JSON을 통해 Flutter CustomScrollView widget을 구성할 수 있습니다.
Flutter의 CustomScrollView widget에 대한 자세한 내용은
[공식 문서](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html)를 참조하세요.

## Properties

| 속성                     | 타입                                | 설명                                                                                                      |
|-------------------------|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| slivers                 | `List<Map<String, dynamic>>`        | viewport 내부에 배치할 sliver들입니다.                                                                        |
| scrollDirection         | `Axis`                              | scroll view가 스크롤되는 축입니다. 기본값은 `Axis.vertical`입니다.                                               |
| reverse                 | `bool`                              | scroll view가 역방향으로 스크롤되는지 여부입니다. 기본값은 `false`입니다.                                            |
| padding                 | `StacEdgeInsets?`                   | child를 삽입할 공간의 양입니다.                                                                               |
| primary                 | `bool?`                             | 이것이 부모와 연결된 기본 scroll view인지 여부입니다.                                                              |
| physics                 | `StacScrollPhysics?`                | scroll view가 사용자 입력에 어떻게 반응해야 하는지를 정의합니다.                                                      |
| dragStartBehavior       | `DragStartBehavior`                 | drag 시작 동작이 처리되는 방식을 결정합니다. 기본값은 `DragStartBehavior.start`입니다.                               |
| clipBehavior            | `Clip`                              | 이 옵션에 따라 콘텐츠가 잘립니다(또는 잘리지 않습니다). 기본값은 `Clip.hardEdge`입니다.                                 |
| restorationId           | `String?`                           | scroll view의 상태를 저장하고 복원하기 위한 복원 ID입니다.                                                         |
| keyboardDismissBehavior | `ScrollViewKeyboardDismissBehavior` | scroll view가 키보드를 해제하는 방법을 구성합니다. 기본값은 `ScrollViewKeyboardDismissBehavior.manual`입니다.         |

## Example JSON

```json
{
  "type": "customScrollView",
  "slivers": [
    {
      "type": "sliverAppBar",
      "title": {
        "type": "text",
        "data": "SliverAppBar"
      },
      "leading": {
        "type": "iconButton",
        "icon": {
          "type": "icon",
          "iconType": "material",
          "icon": "menu"
        },
        "onPressed": {}
      },
      "backgroundColor": "primary",
    }
  ]
}
```
