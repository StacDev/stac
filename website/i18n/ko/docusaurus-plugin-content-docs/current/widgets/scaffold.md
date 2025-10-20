# Scaffold

Stac Scaffold를 사용하면 JSON을 사용하여 Flutter scaffold 위젯을 빌드할 수 있습니다.
Flutter의 scaffold 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/Scaffold-class.html)를 참조하세요.

## Properties

| Property                       | Type                                 | Description                                                                             |
|--------------------------------|--------------------------------------|-----------------------------------------------------------------------------------------|
| appBar                         | `Map<String, dynamic>?`              | scaffold의 앱 바 위젯입니다.                                                     |
| body                           | `Map<String, dynamic>?`              | scaffold의 본문 위젯입니다.                                                        |
| floatingActionButton           | `Map<String, dynamic>?`              | scaffold의 플로팅 액션 버튼 위젯입니다.                                      |
| floatingActionButtonLocation   | `StacFloatingActionButtonLocation?` | 플로팅 액션 버튼의 위치입니다.                                             |
| persistentFooterButtons        | `List<Map<String, dynamic>>?`        | scaffold의 지속적인 푸터 버튼들입니다.                                          |
| drawer                         | `Map<String, dynamic>?`              | scaffold의 드로어 위젯입니다.                                                      |
| endDrawer                      | `Map<String, dynamic>?`              | scaffold의 끝 드로어 위젯입니다.                                                  |
| bottomNavigationBar            | `Map<String, dynamic>?`              | scaffold의 하단 내비게이션 바 위젯입니다.                                       |
| bottomSheet                    | `Map<String, dynamic>?`              | scaffold의 하단 시트 위젯입니다.                                                |
| backgroundColor                | `String?`                            | scaffold의 배경색입니다.                                                   |
| resizeToAvoidBottomInset       | `bool?`                              | scaffold가 하단 삽입을 피하기 위해 크기를 조정해야 하는지 여부입니다.                           |
| primary                        | `bool`                               | scaffold가 기본 scaffold인지 여부입니다. 기본값은 `true`입니다.                       |
| drawerDragStartBehavior        | `DragStartBehavior`                  | 드로어의 드래그 시작 동작입니다. 기본값은 `DragStartBehavior.start`입니다.          |
| extendBody                     | `bool`                               | 본문이 scaffold의 하단 패딩으로 확장되어야 하는지 여부입니다. 기본값은 `false`입니다. |
| extendBodyBehindAppBar         | `bool`                               | 본문이 앱 바 뒤로 확장되어야 하는지 여부입니다. 기본값은 `false`입니다.                 |
| drawerScrimColor               | `String?`                            | 드로어의 스크림 색상입니다.                                                  |
| drawerEdgeDragWidth            | `double?`                            | 드로어의 가장자리 드래그 영역 너비입니다.                                         |
| drawerEnableOpenDragGesture    | `bool`                               | 드로어를 드래그 제스처로 열 수 있는지 여부입니다. 기본값은 `true`입니다.               |
| endDrawerEnableOpenDragGesture | `bool`                               | 끝 드로어를 드래그 제스처로 열 수 있는지 여부입니다. 기본값은 `true`입니다.           |
| restorationId                  | `String?`                            | scaffold의 상태를 저장하고 복원하기 위한 복원 ID입니다.                       |

## Example JSON

```json
{
  "type": "scaffold",
  "appBar": {
    "type": "appBar",
    "title": {
      "type": "text",
      "data": "App Bar Title"
    }
  },
  "body": {
    "type": "center",
    "child": {
      "type": "text",
      "data": "Hello, World!"
    }
  },
  "floatingActionButton": {
    "type": "floatingActionButton",
    "child": {
      "type": "icon",
      "icon": "add"
    },
    "onPressed": {
      "type": "function",
      "name": "onFabPressed"
    }
  },
  "backgroundColor": "#FFFFFF",
  "drawer": {
    "type": "drawer",
    "child": {
      "type": "column",
      "children": [
        {
          "type": "text",
          "data": "Drawer Item 1"
        },
        {
          "type": "text",
          "data": "Drawer Item 2"
        }
      ]
    }
  }
}
```
