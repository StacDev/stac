# List View

Stac listview를 사용하면 JSON을 통해 Flutter listview 위젯을 생성할 수 있습니다.
Flutter의 listview 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/ListView-class.html)를 참조하세요.

## 속성

| Property                | Type                                | Description                                                                                                                                             |
|-------------------------|-------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| scrollDirection         | `Axis`                              | 스크롤 뷰의 오프셋이 증가하는 축입니다.                                                                                                |
| reverse                 | `bool`                              | 스크롤 뷰가 읽기 방향으로 스크롤되는지 여부입니다.                                                                                               |
| primary                 | `bool`                              | 이것이 기본 스크롤 뷰인지 여부입니다.                                                                                                                |
| physics                 | `StacScrollPhysics`                | 스크롤 뷰가 사용자 입력에 어떻게 응답해야 하는지입니다.                                                                                                       |
| shrinkWrap              | `bool`                              | scrollDirection에서 스크롤 뷰의 범위가 보고 있는 콘텐츠에 의해 결정되어야 하는지 여부입니다.                                         |
| padding                 | `StacEdgeInsets`                   | 자식들을 삽입할 공간의 양입니다.                                                                                                     |
| addAutomaticKeepAlives  | `bool`                              | 자식이 더 이상 보이지 않을 때 자동으로 유지(캐시)되어야 하는지 여부를 결정하여 상태를 보존합니다.                    |
| addRepaintBoundaries    | `bool`                              | 각 자식 위젯을 RepaintBoundary로 래핑하여 불필요한 다시 그리기를 줄여 렌더링을 최적화할지 여부를 결정합니다.                            |
| addSemanticIndexes      | `bool`                              | 접근성 도구가 목록 항목의 순서와 구조를 이해할 수 있도록 자식에게 의미론적 인덱스를 할당할지 여부를 결정합니다. |
| cacheExtent             | `double`                            | 뷰포트는 사용자가 스크롤할 때 곧 보이게 될 항목을 캐시하기 위해 보이는 영역 전후에 영역을 가집니다.                       |
| children                | `List<Map<String,dynamic>>`         | 트리에서 이 위젯 아래의 위젯들입니다.                                                                                                              |
| separator               | `Map<String,dynamic>`               | 각 목록 항목 쌍 사이에 표시할 위젯을 정의합니다.                                                                                           |
| semanticChildCount      | `int`                               | 의미론적 정보에 기여할 자식의 수입니다.                                                                                       |
| dragStartBehavior       | `DragStartBehavior`                 | 드래그 시작 동작이 처리되는 방식을 결정합니다.                                                                                                 |
| keyboardDismissBehavior | `ScrollViewKeyboardDismissBehavior` | 이 ScrollView가 키보드를 자동으로 해제하는 방법을 정의합니다.                                                                                    |
| restorationId           | `String`                            | 스크롤 가능한 항목의 스크롤 오프셋을 저장하고 복원하기 위한 복원 ID입니다.                                                                                 |
| clipBehavior            | `Clip`                              | 이 옵션에 따라 콘텐츠가 클리핑됩니다(또는 클리핑되지 않습니다).                                                                                          |

## 예제 JSON

```json
{
  "type": "listView",
  "shrinkWrap": true,
  "separator": {
    "type": "container",
    "height": 10
  },
  "children": [
    {
      "type": "listTile",
      "leading": {
        "type": "container",
        "height": 50,
        "width": 50,
        "color": "#165FC7",
        "child": {
          "type": "column",
          "mainAxisAlignment": "center",
          "crossAxisAlignment": "center",
          "children": [
            {
              "type": "text",
              "data": "1",
              "style": {
                "fontSize": 21
              }
            }
          ]
        }
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item 1",
          "style": {
            "fontSize": 18
          }
        }
      },
      "subtitle": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item description",
          "style": {
            "fontSize": 14
          }
        }
      },
      "trailing": {
        "type": "icon",
        "iconType": "material",
        "icon": "more_vert",
        "size": 24
      }
    },
    {
      "type": "listTile",
      "leading": {
        "type": "container",
        "height": 50,
        "width": 50,
        "color": "#165FC7",
        "child": {
          "type": "column",
          "mainAxisAlignment": "center",
          "crossAxisAlignment": "center",
          "children": [
            {
              "type": "text",
              "data": "2",
              "style": {
                "fontSize": 21
              }
            }
          ]
        }
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item 2",
          "style": {
            "fontSize": 18
          }
        }
      },
      "subtitle": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item description",
          "style": {
            "fontSize": 14
          }
        }
      },
      "trailing": {
        "type": "icon",
        "iconType": "material",
        "icon": "more_vert",
        "size": 24
      }
    },
    {
      "type": "listTile",
      "leading": {
        "type": "container",
        "height": 50,
        "width": 50,
        "color": "#165FC7",
        "child": {
          "type": "column",
          "mainAxisAlignment": "center",
          "crossAxisAlignment": "center",
          "children": [
            {
              "type": "text",
              "data": "3",
              "style": {
                "fontSize": 21
              }
            }
          ]
        }
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item 3",
          "style": {
            "fontSize": 18
          }
        }
      },
      "subtitle": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Item description",
          "style": {
            "fontSize": 14
          }
        }
      },
      "trailing": {
        "type": "icon",
        "iconType": "material",
        "icon": "more_vert",
        "size": 24
      }
    }
  ]
}
```

