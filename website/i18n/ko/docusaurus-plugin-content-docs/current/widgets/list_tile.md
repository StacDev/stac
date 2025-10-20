# ListTile

Stac list tile을 사용하면 JSON을 통해 Flutter list tile 위젯을 생성할 수 있습니다.
Flutter의 list tile 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/ListTile-class.html)를 참조하세요.

## 속성

| Property           | Type                  | Description                                                                                                     |
|--------------------|-----------------------|-----------------------------------------------------------------------------------------------------------------|
| onTap              | `Map<String,dynamic>` | 사용자가 이 list tile을 탭할 때 호출됩니다.                                                                       |
| onLongPress        | `Map<String,dynamic>` | 사용자가 이 list tile을 길게 누를 때 호출됩니다.                                                            |
| leading            | `Map<String,dynamic>` | 제목 앞에 표시할 위젯입니다.                                                                           |
| title              | `Map<String,dynamic>` | list tile의 주요 콘텐츠입니다.                                                                           |
| subtitle           | `Map<String,dynamic>` | 제목 아래에 표시되는 추가 콘텐츠입니다.                                                                   |
| trailing           | `Map<String,dynamic>` | 제목 뒤에 표시할 위젯입니다.                                                                            |
| isThreeLine        | `bool`                | 이 list tile이 세 줄의 텍스트를 표시하도록 의도되었는지 여부입니다.                                              |
| dense              | `bool`                | 이 list tile이 수직으로 밀집된 목록의 일부인지 여부입니다.                                                      |
| style              | `ListTileStyle`       | 제목에 사용되는 글꼴을 정의합니다.                                                                            |
| selectedColor      | `String`              | list tile이 선택될 때 아이콘과 텍스트에 사용되는 색상을 정의합니다.                                       |
| iconColor          | `String`              | leading 및 trailing 아이콘의 기본 색상을 정의합니다.                                                       |
| textColor          | `String`              | 제목, 부제목, leading 및 trailing의 텍스트 색상을 정의합니다.                                          |
| contentPadding     | `StacEdgeInsets`     | tile의 내부 패딩입니다.                                                                                    |
| enabled            | `bool`                | 이 list tile이 상호작용 가능한지 여부입니다.                                                                          |
| selected           | `bool`                | 이 tile이 활성화되어 있으면 아이콘과 텍스트가 동일한 색상으로 렌더링됩니다.                              |
| focusColor         | `String`              | 입력 포커스가 있을 때 tile의 Material 색상입니다.                                                  |
| hoverColor         | `String`              | 포인터가 위에 있을 때 tile의 Material 색상입니다.                                           |
| autoFocus          | `bool`                | 해당 범위에서 현재 포커스된 다른 노드가 없을 때 이 위젯이 초기 포커스로 선택될 경우 true입니다. |
| tileColor          | `String`              | selected가 false일 때 ListTile의 배경색을 정의합니다.                                                |
| selectedTileColor  | `String`              | selected가 true일 때 ListTile의 배경색을 정의합니다.                                                 |
| enableFeedback     | `bool`                | 감지된 제스처가 음향 및/또는 햅틱 피드백을 제공해야 하는지 여부입니다.                                       |
| horizontalTitleGap | `double`              | 제목과 leading/trailing 위젯 사이의 수평 간격입니다.                                         |
| minVerticalPadding | `double`              | 제목 및 부제목 위젯의 상하단에 대한 최소 패딩입니다.                                    |
| minLeadingWidth    | `double`              | ListTile.leading 위젯에 할당된 최소 너비입니다.                                                    |

## 예제 JSON

```json
{
  "type": "column",
  "mainAxisAlignment": "start",
  "crossAxisAlignment": "center",
  "children": [
    {
      "type": "sizedBox",
      "height": 12
    },
    {
      "type": "listTile",
      "leading": {
        "type": "image",
        "src": "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Andrew Symonds",
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
          "data": "Andrew Symonds was an Australian international cricketer, who played all three formats as a batting all-rounder. Commonly nicknamed \"Roy\", he was a key member of two World Cup winning squads. Symonds played as a right-handed, middle order batsman and alternated between medium pace and off-spin",
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
      "type": "sizedBox",
      "height": 12
    },
    {
      "type": "listTile",
      "leading": {
        "type": "image",
        "src": "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Adam Gilchrist",
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
          "data": "Adam Craig Gilchrist is an Australian cricket commentator and former international cricketer and captain of the Australia national cricket team. He was an attacking left-handed batsman and record-breaking wicket-keeper",
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
