# TextField

Stac TextField를 사용하면 JSON을 사용하여 Flutter text field 위젯을 빌드할 수 있습니다. Flutter의 text field 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/TextField-class.html)를 참조하세요.

## Properties

| Property           | Type                        | Description                                                                    |
|--------------------|-----------------------------|--------------------------------------------------------------------------------|
| decoration         | `StacInputDecoration?`     | 텍스트 필드 주위에 표시할 데코레이션입니다.                                  |
| initialValue       | `String`                    | 텍스트 필드에 설정될 초기 값입니다.                                 |
| keyboardType       | `StacTextInputType?`       | 텍스트 편집에 사용할 키보드 유형입니다.                              |
| textInputAction    | `TextInputAction?`          | 키보드에 사용할 액션 버튼입니다.                                     |
| textCapitalization | `TextCapitalization`        | 텍스트를 대문자로 표시하는 방법입니다.                                            |
| style              | `StacTextStyle?`           | 편집 중인 텍스트에 사용할 스타일입니다.                                    |
| textAlign          | `TextAlign`                 | 텍스트를 가로로 정렬하는 방법입니다.                                   |
| textAlignVertical  | `StacTextAlignVertical?`   | 텍스트를 세로로 정렬하는 방법입니다.                                     |
| textDirection      | `TextDirection?`            | 텍스트가 흐르는 방향입니다.                                         |
| readOnly           | `bool`                      | 텍스트 필드가 읽기 전용인지 여부입니다.                                           |
| showCursor         | `bool?`                     | 커서를 표시할지 여부입니다.                                                    |
| expands            | `bool`                      | 텍스트 필드가 부모를 채우도록 확장되어야 하는지 여부입니다.                       |
| autofocus          | `bool`                      | 다른 것에 이미 포커스가 맞춰져 있지 않은 경우 텍스트 필드에 자동으로 포커스를 맞출지 여부입니다. |
| obscuringCharacter | `String`                    | 텍스트를 가릴 때 사용할 문자입니다.                                      |
| maxLines           | `int?`                      | 텍스트가 차지할 최대 줄 수입니다.                              |
| minLines           | `int?`                      | 텍스트가 차지할 최소 줄 수입니다.                              |
| maxLength          | `int?`                      | 텍스트 필드에 허용되는 최대 문자 수입니다.                   |
| obscureText        | `bool`                      | 편집 중인 텍스트를 숨길지 여부입니다.                                         |
| enableSuggestions  | `bool`                      | 사용자가 입력할 때 입력 제안을 표시할지 여부입니다.                           |
| enabled            | `bool?`                     | 텍스트 필드가 활성화되어 있는지 여부입니다.                                             |
| cursorWidth        | `double`                    | 커서의 너비입니다.                                                       |
| cursorHeight       | `double?`                   | 커서의 높이입니다.                                                      |
| cursorColor        | `String?`                   | 커서의 색상입니다.                                                       |
| hintText           | `String?`                   | 텍스트 필드가 비어 있을 때 표시할 힌트 텍스트입니다.                         |
| inputFormatters    | `List<StacInputFormatter>` | 텍스트 필드에 적용할 입력 포매터 리스트입니다.                       |

## Example JSON

```json
{
  "type": "textField",
  "initialValue": "Enter text here",
  "decoration": {
    "hintText": "Enter your name"
  },
  "style": {
    "color": "#000000",
    "fontSize": 16.0
  },
  "textAlign": "center",
  "obscureText": false,
  "maxLength": 50
}
