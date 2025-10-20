# AutoComplete

Stac AutoComplete를 사용하면 JSON을 통해 Flutter AutoComplete 위젯을 구성할 수 있습니다.
Flutter의 AutoComplete 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/Autocomplete-class.html)를 참조하세요.

## 속성

| 속성                     | 타입                       | 설명                                                                                      |
|--------------------------|----------------------------|-------------------------------------------------------------------------------------------|
| options                  | `List<String>`             | 자동완성 옵션 목록입니다.                                                                   |
| onSelected               | `Map<String, dynamic>?`    | 옵션이 선택되었을 때 호출되는 콜백입니다.                                                     |
| optionsMaxHeight         | `double`                   | 옵션 목록의 최대 높이입니다. 기본값은 `200`입니다.                                            |
| optionsViewOpenDirection | `OptionsViewOpenDirection` | 옵션 뷰가 열리는 방향입니다. 기본값은 `OptionsViewOpenDirection.down`입니다.                  |
| initialValue             | `String?`                  | 자동완성 필드의 초기값입니다.                                                                |

## 예제 JSON

```json
{
  "type": "autoComplete",
  "options": ["Option 1", "Option 2", "Option 3"],
  "onSelected": {
    "type": "callback",
    "name": "onOptionSelected"
  },
  "optionsMaxHeight": 250,
  "optionsViewOpenDirection": "up",
  "initialValue": "Option 1"
}
```