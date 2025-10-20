# BottomNavigationBar

Stac BottomNavigationBar를 사용하면 JSON을 통해 Flutter BottomNavigationBar 위젯을 구축할 수 있습니다.
Flutter의 BottomNavigationBar 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html)를 참조하세요.

## 속성

| Property                | Type                                  | Description                                                                    |
|-------------------------|---------------------------------------|--------------------------------------------------------------------------------|
| items                   | `List<StacBottomNavigationBarItem>`  | 하단 네비게이션 바에 표시할 항목입니다.                        |
| elevation               | `double?`                             | 이 하단 네비게이션 바를 배치할 z-좌표입니다.                 |
| bottomNavigationBarType | `BottomNavigationBarType?`            | 하단 네비게이션 바의 유형입니다.                                         |
| fixedColor              | `String?`                             | `type`이 `BottomNavigationBarType.fixed`일 때 선택된 항목의 색상입니다. |
| backgroundColor         | `String?`                             | 하단 네비게이션 바의 배경 색상입니다.                             |
| iconSize                | `double`                              | 하단 네비게이션 바의 아이콘 크기입니다. 기본값은 `24`입니다.          |
| selectedItemColor       | `String?`                             | 선택된 항목의 색상입니다.                                                |
| unselectedItemColor     | `String?`                             | 선택되지 않은 항목의 색상입니다.                                             |
| selectedFontSize        | `double`                              | 선택된 항목의 글꼴 크기입니다. 기본값은 `14.0`입니다.                        |
| unselectedFontSize      | `double`                              | 선택되지 않은 항목의 글꼴 크기입니다. 기본값은 `12.0`입니다.                     |
| selectedLabelStyle      | `StacTextStyle?`                     | 선택된 항목 레이블의 텍스트 스타일입니다.                                     |
| unselectedLabelStyle    | `StacTextStyle?`                     | 선택되지 않은 항목 레이블의 텍스트 스타일입니다.                                  |
| showSelectedLabels      | `bool?`                               | 선택된 항목의 레이블을 표시할지 여부입니다.                                     |
| showUnselectedLabels    | `bool?`                               | 선택되지 않은 항목의 레이블을 표시할지 여부입니다.                                   |
| enableFeedback          | `bool?`                               | 탭에 대한 피드백을 활성화할지 여부입니다.                                           |
| landscapeLayout         | `BottomNavigationBarLandscapeLayout?` | 가로 모드에서 하단 네비게이션 바의 레이아웃입니다.                     |

# DefaultBottomNavigationController

DefaultBottomNavigationController는 BottomNavigationController를 BottomNavigationBar 또는 BottomNavigationView와 공유하는 데 사용되는 상속 위젯입니다.

## 속성

| Property      | Type                    | Description                                                                 |
|---------------|-------------------------|-----------------------------------------------------------------------------|
| length        | `int`                   | 하단 네비게이션 바의 항목 수입니다.                           |
| initialIndex  | `int?`                  | 선택된 항목의 초기 인덱스입니다.                                     |
| child         | `Map<String, dynamic>`  | 트리에서 이 위젯 아래에 있는 위젯입니다.                                   |


# BottomNavigationBarItem

Stac BottomNavigationBarItem을 사용하면 JSON을 통해 Flutter BottomNavigationBarItem을 구축할 수 있습니다.
Flutter의 BottomNavigationBarItem 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/BottomNavigationBarItem-class.html)를 참조하세요.

## 속성

| Property        | Type                    | Description                                                                 |
|-----------------|-------------------------|-----------------------------------------------------------------------------|
| icon            | `Map<String, dynamic>`  | 하단 네비게이션 바 항목에 표시할 아이콘입니다.                      |
| label           | `String`                | 하단 네비게이션 바 항목에 표시할 레이블입니다.                     |
| activeIcon      | `Map<String, dynamic>?` | 항목이 활성 상태일 때 표시할 아이콘입니다.                                |
| backgroundColor | `String?`               | 하단 네비게이션 바 항목의 배경 색상입니다.                     |
| tooltip         | `String?`               | 항목을 길게 누를 때 표시할 툴팁 텍스트입니다.                  |

# BottomNavigationView

현재 선택된 하단 네비게이션 항목에 해당하는 위젯을 표시하는 페이지 뷰입니다.

## 속성

| Property | Type                          | Description                                      |
|----------|-------------------------------|--------------------------------------------------|
| children | `List<Map<String, dynamic>>`  | 트리에서 이 위젯 아래에 있는 위젯들입니다.       |


## Example

```json
{
  "type": "defaultBottomNavigationController",
  "length": 3,
  "child": {
    "type": "scaffold",
    "appBar": {
      "type": "appBar",
      "title": {
        "type": "text",
        "data": "Bottom Navigation Screen"
      }
    },
    "body": {
      "type": "bottomNavigationView",
      "children": [
        {
          "type": "center",
          "child": {
            "type": "text",
            "data": "Home",
            "style": {
              "fontSize": 24
            }
          }
        },
        {
          "type": "center",
          "child": {
            "type": "text",
            "data": "Search",
            "style": {
              "fontSize": 24
            }
          }
        },
        {
          "type": "center",
          "child": {
            "type": "text",
            "data": "Profile",
            "style": {
              "fontSize": 24
            }
          }
        }
      ]
    },
    "bottomNavigationBar": {
      "type": "bottomNavigationBar",
      "items": [
        {
          "type": "navigationBarItem",
          "label": "Home",
          "icon": {
            "type": "icon",
            "iconType": "material",
            "icon": "home"
          }
        },
        {
          "type": "navigationBarItem",
          "label": "Search",
          "icon": {
            "type": "icon",
            "iconType": "material",
            "icon": "search"
          }
        },
        {
          "type": "navigationBarItem",
          "label": "Profile",
          "icon": {
            "type": "icon",
            "iconType": "material",
            "icon": "account_circle"
          }
        }
      ]
    }
  }
}
```
