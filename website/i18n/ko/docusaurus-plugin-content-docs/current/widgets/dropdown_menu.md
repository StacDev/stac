# DropdownMenu

Stac DropdownMenu를 사용하면 JSON을 통해 Flutter DropdownMenu widget을 구성할 수 있습니다.
Flutter의 DropdownMenu widget에 대한 자세한 내용은
[공식 문서](https://api.flutter.dev/flutter/material/DropdownMenu-class.html)를 참조하세요.

## Properties

| 속성                  | 타입                             | 설명                                                    |
|----------------------|----------------------------------|--------------------------------------------------------|
| dropdownMenuEntries  | `List<StacDropdownMenuEntries>` | dropdown menu에 표시할 항목들입니다.                        |
| initialSelection     | `dynamic`                       | 초기 선택 값입니다.                                         |
| enabled              | `bool`                          | dropdown menu가 활성화되어 있는지 여부입니다. 기본값은 `true`입니다. |
| label                | `Map<String, dynamic>?`         | dropdown menu에 표시할 label입니다.                        |
| leadingIcon          | `Map<String, dynamic>?`         | dropdown menu의 시작 부분에 표시할 아이콘입니다.               |
| trailingIcon         | `Map<String, dynamic>?`         | dropdown menu의 끝 부분에 표시할 아이콘입니다.                 |
| hintText             | `String?`                       | 선택되지 않았을 때 표시할 힌트 텍스트입니다.                     |
| errorText            | `String?`                       | 오류가 있을 때 표시할 오류 텍스트입니다.                        |
| width                | `double?`                       | dropdown menu의 너비입니다.                                |
| menuHeight           | `double?`                       | dropdown menu의 높이입니다.                                |
| inputDecorationTheme | `StacInputDecorationTheme?`     | input decoration에 사용할 테마입니다.                       |
| textStyle            | `StacTextStyle?`                | dropdown menu에 사용할 텍스트 스타일입니다.                   |
| enableFilter         | `bool`                          | 필터링을 활성화할지 여부입니다. 기본값은 `true`입니다.            |
| enableSearch         | `bool`                          | 검색을 활성화할지 여부입니다. 기본값은 `true`입니다.              |
| requestFocusOnTap    | `bool`                          | 탭할 때 포커스를 요청할지 여부입니다. 기본값은 `true`입니다.        |

# DropdownMenuEntry

Stac DropdownMenuEntry를 사용하면 JSON을 통해 Flutter DropdownMenuEntry widget을 구성할 수 있습니다.
Flutter의 DropdownMenuEntry widget에 대한 자세한 내용은
[공식 문서](https://api.flutter.dev/flutter/material/DropdownMenuEntry-class.html)를 참조하세요.

## Properties

| 속성          | 타입                     | 설명                                                     |
|--------------|--------------------------|----------------------------------------------------------|
| value        | `dynamic`               | 이 항목과 연결된 값입니다.                                    |
| label        | `String`                | 이 항목에 표시할 label입니다.                                 |
| enabled      | `bool`                  | 이 항목이 활성화되어 있는지 여부입니다. 기본값은 `true`입니다.        |
| leadingIcon  | `Map<String, dynamic>?` | 이 항목의 시작 부분에 표시할 아이콘입니다.                        |
| trailingIcon | `Map<String, dynamic>?` | 이 항목의 끝 부분에 표시할 아이콘입니다.                          |
| style        | `StacButtonStyle?`      | 이 항목에 사용할 스타일입니다.                                  |

## Example JSON

```json
{
  "type": "dropdownMenu",
  "label": {
    "type": "text",
    "data": "Select an option"
  },
  "hintText": "Please select",
  "width": 200,
  "dropdownMenuEntries": [
    {
      "value": "option1",
      "label": "Option 1",
      "leadingIcon": {
        "type": "icon",
        "iconData": "home"
      }
    },
    {
      "value": "option2",
      "label": "Option 2",
      "leadingIcon": {
        "type": "icon",
        "iconData": "settings"
      }
    },
    {
      "value": "option3",
      "label": "Option 3",
      "leadingIcon": {
        "type": "icon",
        "iconData": "favorite"
      }
    }
  ]
}
```
