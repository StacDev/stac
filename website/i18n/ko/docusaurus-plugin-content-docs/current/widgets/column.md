# Column

Stac Column을 사용하면 JSON을 사용하여 Flutter column 위젯을 빌드할 수 있습니다.
Flutter의 column 위젯에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/Column-class.html)를 참조하세요.

## 속성

| 속성               | 타입                         | 설명                                                                              |
|--------------------|------------------------------|-----------------------------------------------------------------------------------|
| mainAxisAlignment  | `MainAxisAlignment`          | 자식 요소들이 주축을 따라 배치되는 방식. 기본값은 `MainAxisAlignment.start`.            |
| crossAxisAlignment | `CrossAxisAlignment`         | 자식 요소들이 교차축을 따라 배치되는 방식. 기본값은 `CrossAxisAlignment.center`.         |
| mainAxisSize       | `MainAxisSize`               | 주축에서 차지할 공간의 크기. 기본값은 `MainAxisSize.max`.                              |
| textDirection      | `TextDirection?`             | 정렬을 해결하는 데 사용할 텍스트 방향.                                                |
| verticalDirection  | `VerticalDirection`          | 자식 요소들을 배치하는 데 사용할 수직 방향. 기본값은 `VerticalDirection.down`.          |
| spacing            | `double`                     | 자식 요소들 간의 간격. 기본값은 `0`.                                                  |
| children           | `List<Map<String, dynamic>>` | column 내에 표시할 위젯 목록. 기본값은 빈 목록.                                        |

## 예제 JSON

```json
{
  "type": "column",
  "mainAxisAlignment": "center",
  "crossAxisAlignment": "start",
  "mainAxisSize": "min",
  "textDirection": "ltr",
  "verticalDirection": "up",
  "spacing": 10,
  "children": [
    {
      "type": "text",
      "data": "Hello, World!"
    },
    {
      "type": "container",
      "width": 100,
      "height": 100,
      "color": "#FF0000"
    }
  ]
}
```
