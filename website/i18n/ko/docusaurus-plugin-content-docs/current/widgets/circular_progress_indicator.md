# CircularProgressIndicator

Stac circularProgressIndicator를 사용하면 JSON을 통해 Flutter CircularProgressIndicator 위젯을 구축할 수 있습니다.
Flutter의 CircularProgressIndicator 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html)를 참조하세요.

## 속성

| Property        | Type        | Description                                                        |
|-----------------|-------------|--------------------------------------------------------------------|
| value           | `double`    | 이 진행 표시기의 진행률입니다.                           |
| backgroundColor | `String`    | 진행 표시기로 채워지는 트랙의 16진수 색상입니다. |
| color           | `String`    | 진행 표시기의 16진수 색상입니다.                           |
| strokeWidth     | `double`    | 진행 표시기의 너비입니다.                               |
| strokeAlign     | `double`    | 진행 표시기에서 획의 상대 위치입니다.         |
| semanticsLabel  | `String`    | 위젯의 텍스트 설명을 제공합니다.                      |
| semanticsValue  | `String`    | 위젯의 텍스트 설명을 제공합니다.                      |
| strokeCap       | `StrokeCap` | 진행 표시기의 선 끝 부분입니다.                              |


## 예제 JSON

```json
{
  "type": "circularProgressIndicator",
  "color": "#541204",
  "strokeWidth": 6,
  "backgroundColor": "#FFD700",
  "strokeCap": "round"
}
```
