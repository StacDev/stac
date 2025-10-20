# SliverAppBar

Stac SliverAppBar를 사용하면 JSON을 사용하여 Flutter sliver app bar 위젯을 빌드할 수 있습니다.
Flutter의 app bar 위젯에 대해 자세히 알아보려면
[공식 문서](https://api.flutter.dev/flutter/material/SliverAppBar-class.html)를 참조하세요.

## Properties

| Property               | Type                         | Description                                                                                     |
|------------------------|------------------------------|-------------------------------------------------------------------------------------------------|
| leading                | `Map<String, dynamic>?`      | 타이틀 앞의 리딩 위젯입니다.                                                            |
| title                  | `Map<String, dynamic>?`      | 타이틀 위젯입니다.                                                                               |
| titleTextStyle         | `StacTextStyle?`             | 타이틀의 텍스트 스타일입니다.                                                                   |
| toolbarTextStyle       | `StacTextStyle?`             | 툴바의 텍스트 스타일입니다.                                                                 |
| shadowColor            | `String?`                    | 앱 바 아래 그림자의 색상입니다.                                                      |
| backgroundColor        | `String?`                    | 앱 바의 배경색입니다.                                                            |
| foregroundColor        | `String?`                    | 앱 바의 전경 요소 색상입니다.                                                 |
| surfaceTintColor       | `String?`                    | 앱 바의 표면 틴트 색상입니다.                                                          |
| actions                | `List<Map<String, dynamic>>` | 타이틀 뒤에 행으로 표시할 위젯 리스트입니다. 기본값은 빈 리스트입니다.             |
| bottom                 | `Map<String, dynamic>?`      | 앱 바의 하단 위젯입니다.                                                               |
| titleSpacing           | `double?`                    | 타이틀 주위의 간격입니다.                                                                   |
| toolbarOpacity         | `double`                     | 툴바의 불투명도입니다. 기본값은 `1.0`입니다.                                                  |
| bottomOpacity          | `double`                     | 하단 위젯의 불투명도입니다. 기본값은 `1.0`입니다.                                            |
| toolbarHeight          | `double?`                    | 툴바의 높이입니다.                                                                      |
| leadingWidth           | `double?`                    | 리딩 위젯의 너비입니다.                                                                |
| primary                | `bool`                       | 이 앱 바가 scaffold의 기본 앱 바인지 여부입니다. 기본값은 `true`입니다.               |
| centerTitle            | `bool?`                      | 타이틀을 중앙에 배치할지 여부입니다.                                                           |
| elevation              | `double?`                    | 앱 바의 높이입니다.                                                                   |
| scrolledUnderElevation | `double?`                    | 스크롤되어 아래에 있을 때 앱 바의 높이입니다.                                         |
| flexibleSpace          | `Map<String, dynamic>?`      | 이 위젯은 툴바와 탭 바 뒤에 쌓입니다.                                      |
| expandedHeight         | `double?`                    | 완전히 확장되었을 때 앱 바의 크기입니다.                                              |
| collapsedHeight        | `double?`                    | 축소되었을 때 앱 바의 높이입니다.                                                 |
| titleSpacing           | `double?`                    | 가로 축에서 타이틀 콘텐츠 주위의 간격입니다.                                        |
| floating               | `bool`                       | 사용자가 앱 바 쪽으로 스크롤하자마자 앱 바를 표시합니다. 기본값은 `false`입니다. |
| pinned                 | `bool`                       | 스크롤 뷰의 시작 부분에 앱 바를 표시합니다. 기본값은 `true`입니다.                  |
| snap                   | `bool`                       | AppBar의 스냅 동작을 제어합니다. 기본값은 `false`입니다.                                     |
| stretch                | `bool`                       | 앱 바가 오버스크롤 영역을 채우도록 늘어나야 하는지 여부입니다. 기본값은 `false`입니다.           |
| stretchTriggerOffset   | `double?`                    | `onStretchTrigger`를 활성화하는 데 필요한 오버스크롤의 오프셋입니다.                               |
| shape                  | `Map<String, dynamic>?`      | 앱 바의 Material과 그 그림자의 모양입니다.                                      |
| iconTheme              | `Map<String, dynamic>?`      | 툴바 아이콘에 사용할 색상, 불투명도 및 크기입니다.                                          |
| actionsIconTheme       | `Map<String, dynamic>?`      | 앱 바의 액션에 나타나는 아이콘에 사용할 색상, 불투명도 및 크기입니다.         |
| actionsPadding         | `Map<String, dynamic>?`      | 액션과 AppBar 끝 사이의 패딩입니다.                                      |

## Example JSON

```json
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
  "actions": [
    {
      "type": "iconButton",
      "icon": {
        "type": "icon",
        "iconType": "cupertino",
        "icon": "heart_solid"
      },
      "onPressed": {}
    }
  ]
}
```
