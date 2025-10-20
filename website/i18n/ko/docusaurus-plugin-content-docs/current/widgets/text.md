# Text

Stac text를 사용하면 JSON을 사용하여 Flutter text 위젯을 빌드할 수 있습니다.
Flutter의 text 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Text-class.html)를 참조하세요.

## Properties

| Property        | Type                  | Description                                        |
|-----------------|-----------------------|----------------------------------------------------|
| data            | `String`              | 표시할 텍스트입니다.                               |
| children        | `List<StacTextSpan>` | 표시할 텍스트 스팬의 리스트입니다.                 |
| style           | `StacTextStyle?`     | 텍스트에 적용할 스타일입니다.                    |
| textAlign       | `TextAlign?`          | 텍스트의 정렬입니다.                         |
| textDirection   | `TextDirection?`      | 텍스트의 방향입니다.                         |
| softWrap        | `bool?`               | 텍스트가 소프트 줄바꿈에서 끊어져야 하는지 여부입니다. |
| overflow        | `TextOverflow?`       | 시각적 오버플로우를 처리하는 방법입니다.             |
| textScaleFactor | `double?`             | 각 논리 픽셀에 대한 폰트 픽셀 수입니다.  |
| maxLines        | `int?`                | 표시할 최대 줄 수입니다.            |
| semanticsLabel  | `String?`             | 텍스트의 의미론적 레이블입니다.                  |
| textWidthBasis  | `TextWidthBasis?`     | 텍스트의 너비 기준입니다.                      |
| selectionColor  | `String?`             | 텍스트 선택의 색상입니다.                   |

## Example JSON

```json
{
  "type":  "text",
  "data":  "Hello, World!",
  "style":  {
    "color":  "#FFFFFF",
    "fontSize":  24.0
  }
}
```
