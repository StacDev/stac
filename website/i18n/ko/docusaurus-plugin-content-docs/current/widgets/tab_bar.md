# TabBar

Stac TabBar를 사용하면 JSON을 사용하여 Flutter TabBar 위젯을 빌드할 수 있습니다.
Flutter의 TabBar 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/TabBar-class.html)를 참조하세요.

## 속성

| Property                             | Type                          | Description                                                                 |
|--------------------------------------|-------------------------------|-----------------------------------------------------------------------------|
| tabs                                 | `List<Map<String, dynamic>>`  | 탭 바에 표시할 탭들입니다.                                         |
| initialIndex                         | `int`                         | 선택된 탭의 초기 인덱스입니다. 기본값은 `0`입니다.                     |
| isScrollable                         | `bool`                        | 탭 바가 스크롤 가능한지 여부입니다. 기본값은 `false`입니다.                     |
| padding                              | `StacEdgeInsets?`            | 탭 바의 패딩입니다.                                                |
| indicatorColor                       | `String?`                     | 탭 표시기의 색상입니다.                                             |
| automaticIndicatorColorAdjustment    | `bool`                        | 표시기 색상을 자동으로 조정할지 여부입니다. 기본값은 `true`입니다.    |
| indicatorWeight                      | `double`                      | 탭 표시기의 두께입니다. 기본값은 `2.0`입니다.                      |
| indicatorPadding                     | `StacEdgeInsets?`            | 탭 표시기의 패딩입니다.                                          |
| indicator                            | `StacBoxDecoration?`         | 탭 표시기의 데코레이션입니다.                                       |
| indicatorSize                        | `TabBarIndicatorSize?`        | 탭 표시기의 크기입니다.                                              |
| labelColor                           | `String?`                     | 선택된 탭 레이블의 색상입니다.                                        |
| labelStyle                           | `StacTextStyle?`             | 선택된 탭 레이블의 텍스트 스타일입니다.                                   |
| labelPadding                         | `StacEdgeInsets?`            | 선택된 탭 레이블의 패딩입니다.                                     |
| unselectedLabelColor                 | `String?`                     | 선택되지 않은 탭 레이블의 색상입니다.                                     |
| unselectedLabelStyle                 | `StacTextStyle?`             | 선택되지 않은 탭 레이블의 텍스트 스타일입니다.                                |
| dragStartBehavior                    | `DragStartBehavior`           | 드래그 시작 동작입니다. 기본값은 `DragStartBehavior.start`입니다.             |
| enableFeedback                       | `bool?`                       | 탭에 대한 피드백을 활성화할지 여부입니다.                                        |
| physics                              | `StacScrollPhysics?`         | 탭 바의 스크롤 물리입니다.                                         |
| tabAlignment                         | `TabAlignment?`               | 탭의 정렬입니다.                                                  |

# DefaultTabController

Stac DefaultTabController를 사용하면 JSON을 사용하여 Flutter DefaultTabController 위젯을 빌드할 수 있습니다.
Flutter의 DefaultTabController 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/DefaultTabController-class.html)를 참조하세요.

## 속성

| Property     | Type                   | Description                                             |
|--------------|------------------------|---------------------------------------------------------|
| length       | `int`                  | 탭의 수입니다.                                     |
| initialIndex | `int`                  | 선택된 탭의 초기 인덱스입니다. 기본값은 `0`입니다. |
| child        | `Map<String, dynamic>` | 트리에서 이 위젯 아래의 위젯입니다.               |

# Tab

Stac Tab을 사용하면 JSON을 사용하여 Flutter Tab 위젯을 빌드할 수 있습니다.
Flutter의 Tab 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/Tab-class.html)를 참조하세요.

## 속성

| Property    | Type                    | Description                                      |
|-------------|-------------------------|--------------------------------------------------|
| text        | `String?`               | 탭에 표시할 텍스트입니다.                  |
| icon        | `Map<String, dynamic>?` | 탭에 표시할 아이콘입니다.                  |
| iconMargin  | `StacEdgeInsets?`      | 아이콘 주위의 마진입니다.                      |
| height      | `double?`               | 탭의 높이입니다.                           |
| child       | `Map<String, dynamic>?` | 트리에서 이 위젯 아래의 위젯입니다.        |


# TabBarView

Stac TabBarView를 사용하면 JSON을 사용하여 Flutter TabBarView 위젯을 빌드할 수 있습니다.
Flutter의 TabBarView 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/TabBarView-class.html)를 참조하세요.

## 속성

| Property          | Type                         | Description                                                                   |
|-------------------|------------------------------|-------------------------------------------------------------------------------|
| children          | `List<Map<String, dynamic>>` | 각 탭에 표시할 위젯들입니다.                                           |
| initialIndex      | `int`                        | 선택된 탭의 초기 인덱스입니다. 기본값은 `0`입니다.                       |
| dragStartBehavior | `DragStartBehavior`          | 드래그 시작 동작입니다. 기본값은 `DragStartBehavior.start`입니다.               |
| physics           | `StacScrollPhysics?`        | 탭 바 뷰의 스크롤 물리입니다.                                      |
| viewportFraction  | `double`                     | 각 페이지가 차지해야 하는 뷰포트의 비율입니다. 기본값은 `1.0`입니다. |
| clipBehavior      | `Clip`                       | 클립 동작입니다. 기본값은 `Clip.hardEdge`입니다.                               |

## 예제 JSON

```json
{
  "type": "defaultTabController",
  "length": 3,
  "child": {
    "type": "scaffold",
    "appBar": {
      "type": "appBar",
      "title": {
        "type": "text",
        "data": "Tabbar"
      },
      "bottom": {
        "type": "tabBar",
        "tabs": [
          {
            "type": "tab",
            "text": "Red"
          },
          {
            "type": "tab",
            "text": "Red"
          },
          {
            "type": "tab",
            "text": "Red"
          }
        ]
      }
    },
    "body": {
      "type": "tabBarView",
      "children": [
        {
          "type": "container",
          "color": "#D9D9D9"
        },
        {
          "type": "container",
          "color": "#FC3F1B"
        },
        {
          "type": "container",
          "color": "#D9D9D9"
        }
      ]
    }
  }
}
```
