# AppBar

Stac AppBar를 사용하면 JSON을 통해 Flutter app bar 위젯을 구성할 수 있습니다.
Flutter의 app bar 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/AppBar-class.html)를 참조하세요.

## 속성

| 속성                   | 타입                         | 설명                                                                                |
|------------------------|------------------------------|-------------------------------------------------------------------------------------|
| leading                | `Map<String, dynamic>?`      | 제목 앞에 표시되는 선행 위젯입니다.                                                    |
| title                  | `Map<String, dynamic>?`      | 제목 위젯입니다.                                                                      |
| titleTextStyle         | `StacTextStyle?`            | 제목의 텍스트 스타일입니다.                                                            |
| toolbarTextStyle       | `StacTextStyle?`            | 툴바의 텍스트 스타일입니다.                                                            |
| shadowColor            | `String?`                    | 앱 바 아래 그림자의 색상입니다.                                                        |
| backgroundColor        | `String?`                    | 앱 바의 배경 색상입니다.                                                              |
| foregroundColor        | `String?`                    | 앱 바의 전경 요소 색상입니다.                                                          |
| surfaceTintColor       | `String?`                    | 앱 바의 표면 틴트 색상입니다.                                                          |
| actions                | `List<Map<String, dynamic>>` | 제목 뒤에 행으로 표시할 위젯 목록입니다. 기본값은 빈 목록입니다.                          |
| bottom                 | `Map<String, dynamic>?`      | 앱 바의 하단 위젯입니다.                                                              |
| titleSpacing           | `double?`                    | 제목 주변의 간격입니다.                                                               |
| toolbarOpacity         | `double`                     | 툴바의 불투명도입니다. 기본값은 `1.0`입니다.                                            |
| bottomOpacity          | `double`                     | 하단 위젯의 불투명도입니다. 기본값은 `1.0`입니다.                                        |
| toolbarHeight          | `double?`                    | 툴바의 높이입니다.                                                                    |
| leadingWidth           | `double?`                    | 선행 위젯의 너비입니다.                                                               |
| primary                | `bool`                       | 이 앱 바가 scaffold의 기본 앱 바인지 여부입니다. 기본값은 `true`입니다.                  |
| centerTitle            | `bool?`                      | 제목을 중앙에 배치할지 여부입니다.                                                     |
| elevation              | `double?`                    | 앱 바의 고도입니다.                                                                   |
| scrolledUnderElevation | `double?`                    | 스크롤되어 아래로 내려갔을 때 앱 바의 고도입니다.                                       |

## 예제 JSON

```json
{
  "type": "appBar",
  "title": {
    "type": "text",
    "data": "App Bar Title"
  },
  "backgroundColor": "#FFFFFF",
  "foregroundColor": "#000000",
  "actions": [
    {
      "type": "iconButton",
      "icon": {
        "type": "icon",
        "icon": "search"
      }
    },
    {
      "type": "iconButton",
      "icon": {
        "type": "icon",
        "icon": "settings"
      }
    }
  ]
}
```