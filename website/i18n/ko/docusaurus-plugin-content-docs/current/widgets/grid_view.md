# GridView

Stac GridView를 사용하면 JSON을 사용하여 Flutter GridView widget을 빌드할 수 있습니다.
Flutter의 GridView widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/GridView-class.html)를 참조하세요.

## Properties

| Property                | Type                                | Description                                                                 |
|-------------------------|-------------------------------------|-----------------------------------------------------------------------------|
| scrollDirection         | `Axis`                              | grid가 스크롤되는 축입니다. 기본값은 `Axis.vertical`입니다.                                |
| reverse                 | `bool`                              | grid가 역방향으로 스크롤되는지 여부입니다. 기본값은 `false`입니다.                                |
| primary                 | `bool`                              | 이것이 primary scroll view인지 여부입니다. 기본값은 `false`입니다.                          |
| physics                 | `StacScrollPhysics?`               | scroll view의 physics입니다.                                                    |
| shrinkWrap              | `bool`                              | scrollDirection의 scroll view 범위가 표시되는 콘텐츠에 의해 결정되어야 하는지 여부입니다. 기본값은 `false`입니다. |
| padding                 | `StacEdgeInsets?`                  | grid를 inset할 공간의 양입니다.                                                      |
| crossAxisCount          | `int?`                              | cross axis의 children 수입니다.                                                  |
| mainAxisSpacing         | `double`                            | main axis의 children 사이의 간격입니다. 기본값은 `0.0`입니다.                               |
| crossAxisSpacing        | `double`                            | cross axis의 children 사이의 간격입니다. 기본값은 `0.0`입니다.                              |
| childAspectRatio        | `double`                            | 각 child의 cross-axis 대 main-axis 범위의 비율입니다. 기본값은 `1.0`입니다.                   |
| mainAxisExtent          | `double?`                           | main axis에서 각 child의 범위입니다.                                                 |
| addAutomaticKeepAlives  | `bool`                              | automatic keep-alive를 추가할지 여부입니다. 기본값은 `true`입니다.                          |
| addRepaintBoundaries    | `bool`                              | repaint boundary를 추가할지 여부입니다. 기본값은 `true`입니다.                              |
| addSemanticIndexes      | `bool`                              | semantic index를 추가할지 여부입니다. 기본값은 `true`입니다.                                |
| cacheExtent             | `double?`                           | 콘텐츠가 캐시되는 범위입니다.                                                            |
| children                | `List<Map<String, dynamic>>`        | 트리에서 이 widget 아래에 있는 widget들입니다. 기본값은 빈 list입니다.                           |
| semanticChildCount      | `int?`                              | semantic 목적을 위한 children의 수입니다.                                             |
| dragStartBehavior       | `DragStartBehavior`                 | drag 시작 동작입니다. 기본값은 `DragStartBehavior.start`입니다.                          |
| keyboardDismissBehavior | `ScrollViewKeyboardDismissBehavior` | keyboard dismiss 동작입니다. 기본값은 `ScrollViewKeyboardDismissBehavior.manual`입니다. |
| restorationId           | `String?`                           | scroll offset을 저장하고 복원하기 위한 restoration ID입니다.                             |
| clipBehavior            | `Clip`                              | grid의 clip 동작입니다. 기본값은 `Clip.hardEdge`입니다.                                 |

## Example JSON

```json
{
  "type": "gridView",
  "scrollDirection": "vertical",
  "reverse": false,
  "primary": false,
  "physics": {
    "type": "scrollPhysics",
    "name": "bouncing"
  },
  "shrinkWrap": false,
  "padding": {
    "left": 10,
    "top": 10,
    "right": 10,
    "bottom": 10
  },
  "crossAxisCount": 2,
  "mainAxisSpacing": 10.0,
  "crossAxisSpacing": 10.0,
  "childAspectRatio": 1.0,
  "mainAxisExtent": 100.0,
  "addAutomaticKeepAlives": true,
  "addRepaintBoundaries": true,
  "addSemanticIndexes": true,
  "cacheExtent": 100.0,
  "children": [
    {
      "type": "text",
      "data": "Item 1"
    },
    {
      "type": "text",
      "data": "Item 2"
    }
  ],
  "semanticChildCount": 2,
  "dragStartBehavior": "start",
  "keyboardDismissBehavior": "manual",
  "restorationId": "grid_view_1",
  "clipBehavior": "hardEdge"
}
```
