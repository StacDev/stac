# LinearProgressIndicator

Stac linearProgressIndicator를 사용하면 JSON을 통해 Flutter LinearProgressIndicator 위젯을 생성할 수 있습니다.
Flutter의 LinearProgressIndicator 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html)를 참조하세요.

## Properties

| Property        | Type                | Description                                                        |
|-----------------|---------------------|--------------------------------------------------------------------|
| value           | `double`            | 이 progress indicator의 진행률입니다.                           |
| backgroundColor | `String`            | progress indicator에 의해 채워지는 트랙의 16진수 색상입니다. |
| color           | `String`            | progress indicator의 16진수 색상입니다.                           |
| minHeight       | `double`            | progress indicator의 높이입니다.                              |
| semanticsLabel  | `String`            | 위젯에 대한 텍스트 설명을 제공합니다.                      |
| semanticsValue  | `String`            | 위젯에 대한 텍스트 설명을 제공합니다.                      |
| borderRadius    | `StacBorderRadius` | progress indicator의 테두리 반경입니다.                          |


## Example JSON

```json
{
  "type": "linearProgressIndicator",
  "color": "#541204",
  "minHeight": 6,
  "backgroundColor": "#FFD700",
  "borderRadius": {
    "topLeft": 10,
    "topRight": 10,
    "bottomLeft": 10,
    "bottomRight": 10
  }
}
```

