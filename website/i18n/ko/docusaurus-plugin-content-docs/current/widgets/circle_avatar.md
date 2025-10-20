# CircleAvatar

Stac CircleAvatar를 사용하면 JSON을 통해 Flutter circle avatar 위젯을 구축할 수 있습니다.
Flutter의 circle avatar 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/CircleAvatar-class.html)를 참조하세요.

## 속성

| Property                | Type                    | Description                                                                 |
|-------------------------|-------------------------|-----------------------------------------------------------------------------|
| child                   | `Map<String, dynamic>?` | circle avatar 안에 표시할 위젯입니다.                             |
| backgroundColor         | `String?`               | circle avatar의 배경 색상입니다.                                  |
| backgroundImage         | `String?`               | circle avatar의 배경 이미지입니다.                                  |
| foregroundImage         | `String?`               | circle avatar의 전경 이미지입니다.                                  |
| onBackgroundImageError  | `Map<String, dynamic>?` | 배경 이미지 로드에 실패한 경우 표시할 오류 위젯입니다.          |
| onForegroundImageError  | `Map<String, dynamic>?` | 전경 이미지 로드에 실패한 경우 표시할 오류 위젯입니다.          |
| foregroundColor         | `String?`               | circle avatar의 전경 요소 색상입니다.                       |
| radius                  | `double?`               | circle avatar의 반경입니다.                                            |
| minRadius               | `double?`               | circle avatar의 최소 반경입니다.                                    |
| maxRadius               | `double?`               | circle avatar의 최대 반경입니다.                                    |

## 예제 JSON

```json
{
  "type": "circleAvatar",
  "backgroundColor": "#FF0000",
  "foregroundColor": "#FFFFFF",
  "backgroundImage": "https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/companies/bettrdo.jpg",
  "radius": 50,
  "child": {
    "type": "text",
    "data": "A"
  }
}
```
