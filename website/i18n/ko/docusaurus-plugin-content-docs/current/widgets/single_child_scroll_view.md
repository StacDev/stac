# SingleChildScrollView

Stac SingleChildScrollView를 사용하면 JSON을 사용하여 Flutter SingleChildScrollView 위젯을 빌드할 수 있습니다.
Flutter의 SingleChildScrollView 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html)를 참조하세요.

## Properties

| Property                | Type                                | Description                                                                                                         |
|-------------------------|-------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| scrollDirection         | `Axis`                              | 스크롤 뷰가 스크롤되는 축입니다. 기본값은 `Axis.vertical`입니다.                                          |
| reverse                 | `bool`                              | 스크롤 뷰가 역방향으로 스크롤되는지 여부입니다. 기본값은 `false`입니다.                      |
| padding                 | `StacEdgeInsets?`                  | 자식을 삽입할 공간의 양입니다.                                                                    |
| primary                 | `bool?`                             | 이것이 부모와 연결된 기본 스크롤 뷰인지 여부입니다.                                                 |
| physics                 | `StacScrollPhysics?`               | 스크롤 뷰가 사용자 입력에 응답하는 방법입니다.                                                                   |
| child                   | `Map<String, dynamic>?`             | 트리에서 이 위젯 아래의 위젯입니다.                                                                           |
| dragStartBehavior       | `DragStartBehavior`                 | 드래그 시작 동작이 처리되는 방식을 결정합니다. 기본값은 `DragStartBehavior.start`입니다.                      |
| clipBehavior            | `Clip`                              | 이 옵션에 따라 콘텐츠가 클리핑됩니다(또는 클리핑되지 않습니다). 기본값은 `Clip.hardEdge`입니다.                         |
| restorationId           | `String?`                           | 스크롤 뷰의 상태를 저장하고 복원하기 위한 복원 ID입니다.                                                |
| keyboardDismissBehavior | `ScrollViewKeyboardDismissBehavior` | 스크롤 뷰가 키보드를 닫는 방법을 구성합니다. 기본값은 `ScrollViewKeyboardDismissBehavior.manual`입니다. |

## Example JSON

```json
{
  "type": "singleChildScrollView",
  "child": {
    "type": "column",
    "children": [
      {
        "type": "text",
        "data": "Hello World!"
      },
      {
        "type": "text",
        "data": "This is a SingleChildScrollView widget."
      },
      {
        "type": "text",
        "data": "You can scroll vertically."
      },
      {
        "type": "text",
        "data": "You can also scroll horizontally."
      }
    ]
  }
}
```
