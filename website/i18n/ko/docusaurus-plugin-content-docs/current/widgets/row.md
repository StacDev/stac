# Row

Stac row를 사용하면 JSON을 사용하여 Flutter row 위젯을 빌드할 수 있습니다.
Flutter의 row 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Row-class.html)를 참조하세요.

## 속성

| Property           | Type                        | Description                                                                                                           |
|--------------------|-----------------------------|-----------------------------------------------------------------------------------------------------------------------|
| mainAxisAlignment  | `MainAxisAlignment`         | 주축을 따라 자식들을 배치하는 방법입니다.                                                                |
| crossAxisAlignment | `CrossAxisAlignment`        | 교차축을 따라 자식들을 배치하는 방법입니다.                                                               |
| mainAxisSize       | `MainAxisSize`              | 주축에서 차지해야 할 공간의 크기입니다.                                                                   |
| textDirection      | `TextDirection`             | 자식들을 가로로 배치할 순서와 가로 방향에서 시작과 끝을 해석하는 방법을 결정합니다. |
| spacing            | `double`                    | 주축의 자식들 사이에 배치할 공간의 크기입니다.                                                            |
| children           | `List<Map<String,dynamic>>` | 트리에서 이 위젯 아래의 위젯들입니다.                                                                            |

## 예제 JSON

```json
{
  "type": "row",
  "mainAxisAlignment": "center",
  "crossAxisAlignment": "center",
  "spacing": 12,
  "children": [
    {
      "type": "image",
      "src": "https://images.pexels.com/photos/2718416/pexels-photo-2718416.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "width": 100
    },
    {
      "type": "image",
      "src": "https://images.pexels.com/photos/121629/pexels-photo-121629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "width": 100
    },
    {
      "type": "image",
      "src": "https://images.pexels.com/photos/1414642/pexels-photo-1414642.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "width": 100
    }
  ]
}
```
