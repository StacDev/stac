# TextFormField

Stac TextFormField를 사용하면 JSON을 사용하여 Flutter TextFormField 위젯을 빌드할 수 있습니다.
Flutter의 TextFormField 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/TextFormField-class.html)를 참조하세요.

## 속성

| Property                      | Type                            | Description                                                                                                                                        |
|-------------------------------|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| id                            | `String?`                       | 텍스트 폼 필드의 식별자입니다.                                                                                                            |
| compareId                     | `String?`                       | 다른 텍스트 폼 필드와 비교할 식별자입니다.                                                                                            |
| decoration                    | `StacInputDecoration?`         | 텍스트 폼 필드 주위에 표시할 데코레이션입니다.                                                                                                 |
| initialValue                  | `String?`                       | 텍스트 폼 필드의 초기 값입니다.                                                                                                          |
| keyboardType                  | `StacTextInputType?`           | 텍스트 편집에 사용할 키보드 유형입니다.                                                                                                  |
| textInputAction               | `TextInputAction?`              | 키보드에 사용할 액션 버튼입니다.                                                                                                         |
| textCapitalization            | `TextCapitalization`            | 텍스트를 대문자로 표시하는 방법입니다. 기본값은 `TextCapitalization.none`입니다.                                                                         |
| style                         | `StacTextStyle?`               | 텍스트에 사용할 스타일입니다.                                                                                                                     |
| textAlign                     | `TextAlign`                     | 텍스트를 정렬하는 방법입니다. 기본값은 `TextAlign.start`입니다.                                                                                     |
| textAlignVertical             | `StacTextAlignVertical?`       | 텍스트를 세로로 정렬하는 방법입니다.                                                                                                         |
| textDirection                 | `TextDirection?`                | 텍스트의 방향입니다.                                                                                                                         |
| readOnly                      | `bool`                          | 텍스트 폼 필드가 읽기 전용인지 여부입니다. 기본값은 `false`입니다.                                                                                     |
| showCursor                    | `bool?`                         | 커서를 표시할지 여부입니다.                                                                                                                        |
| autofocus                     | `bool`                          | 다른 것에 이미 포커스가 맞춰져 있지 않은 경우 텍스트 폼 필드에 자동으로 포커스를 맞출지 여부입니다. 기본값은 `false`입니다.                                           |
| obscuringCharacter            | `String`                        | 텍스트를 가리는 데 사용할 문자입니다. 기본값은 `•`입니다.                                                                                          |
| maxLines                      | `int?`                          | 텍스트의 최대 줄 수입니다.                                                                                                          |
| minLines                      | `int?`                          | 텍스트의 최소 줄 수입니다.                                                                                                          |
| maxLength                     | `int?`                          | 텍스트의 최대 문자 수입니다.                                                                                                     |
| obscureText                   | `bool?`                         | 텍스트를 가릴지 여부입니다.                                                                                                                       |
| autocorrect                   | `bool`                          | 자동 수정을 활성화할지 여부입니다. 기본값은 `true`입니다.                                                                                                 |
| smartDashesType               | `SmartDashesType?`              | 사용할 스마트 대시 유형입니다.                                                                                                                   |
| smartQuotesType               | `SmartQuotesType?`              | 사용할 스마트 따옴표 유형입니다.                                                                                                                   |
| maxLengthEnforcement          | `MaxLengthEnforcement?`         | 최대 길이 제한을 적용하는 방법입니다.                                                                                                       |
| expands                       | `bool`                          | 텍스트 폼 필드가 부모를 채우도록 확장되어야 하는지 여부입니다. 기본값은 `false`입니다.                                                                 |
| keyboardAppearance            | `Brightness?`                   | 키보드의 외관입니다.                                                                                                                    |
| scrollPadding                 | `StacEdgeInsets`               | 스크롤할 때 텍스트 폼 필드를 삽입할 공간의 양입니다. 기본값은 `StacEdgeInsets(bottom: 20, top: 20, left: 20, right: 20)`입니다. |
| restorationId                 | `String?`                       | 텍스트 폼 필드의 상태를 저장하고 복원하기 위한 복원 ID입니다.                                                                |
| enableIMEPersonalizedLearning | `bool`                          | IME에서 개인화된 학습을 활성화할지 여부입니다. 기본값은 `true`입니다.                                                                            |
| enableSuggestions             | `bool`                          | 제안을 활성화할지 여부입니다. 기본값은 `true`입니다.                                                                                                 |
| enabled                       | `bool?`                         | 텍스트 폼 필드가 활성화되어 있는지 여부입니다.                                                                                                            |
| cursorWidth                   | `double`                        | 커서의 너비입니다. 기본값은 `2`입니다.                                                                                                          |
| cursorHeight                  | `double?`                       | 커서의 높이입니다.                                                                                                                          |
| cursorColor                   | `String?`                       | 커서의 색상입니다.                                                                                                                           |
| hintText                      | `String?`                       | 표시할 힌트 텍스트입니다.                                                                                                                          |
| autovalidateMode              | `AutovalidateMode?`             | 자동 유효성 검사에 사용할 모드입니다.                                                                                                                |
| inputFormatters               | `List<StacInputFormatter>`     | 텍스트에 적용할 입력 포매터 리스트입니다. 기본값은 빈 리스트입니다.                                                                      |
| validatorRules                | `List<StacFormFieldValidator>` | 텍스트에 적용할 유효성 검사 규칙 리스트입니다. 기본값은 빈 리스트입니다.                                                                       |

## 예제 JSON

```json
{
  "type":  "textFormField",
  "id":  "email",
  "autovalidateMode":  "onUserInteraction",
  "validatorRules":  [
    {
      "rule":  "isEmail",
      "message":  "Please enter a valid email"
    }
  ],
  "style":  {
    "fontSize":  16,
    "fontWeight":  "w400",
    "height":  1.5
  },
  "decoration":  {
    "hintText":  "Email",
    "filled":  true,
    "fillColor":  "#FFFFFF",
    "border":  {
      "type":  "outlineInputBorder",
      "borderRadius":  8,
      "color":  "#24151D29"
    }
  }
}
```
