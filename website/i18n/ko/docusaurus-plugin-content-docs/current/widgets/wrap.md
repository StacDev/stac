# Wrap

Stac wrap을 사용하면 JSON을 사용하여 Flutter wrap 위젯을 빌드할 수 있습니다.
Flutter의 wrap 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Wrap-class.html)를 참조하세요.

## 속성

| Property           | Type                         | Description                                                                                                           |
|--------------------|------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| Axis               | `Axis`                       | 주축으로 사용할 방향입니다.                                                                |
| alignment          | `WrapAlignment`              | 런 내의 자식들을 주축에 배치하는 방법입니다.                                                      |
| spacing            | `double`                     | 주축의 런에서 자식들 사이에 배치할 공간의 크기입니다.                                                   |
| runAlignment       | `WrapAlignment`              | 런 자체를 교차축에 배치하는 방법입니다.                                                           |
| runSpacing         | `double`                     | 교차축에서 런 자체 사이에 배치할 공간의 크기입니다.                                                |
| crossAxisAlignment | `WrapCrossAxisAlignment`     | 런 내의 자식들을 교차축에서 서로 정렬하는 방법입니다.                             |
| textDirection      | `TextDirection`              | 자식들을 가로로 배치할 순서와 가로 방향에서 시작과 끝을 해석하는 방법을 결정합니다. |
| verticalDirection  | `VerticalDirection`          | 자식들을 세로로 배치할 순서와 세로 방향에서 시작과 끝을 해석하는 방법을 결정합니다.     |
| clipBehavior       | `Clip`                       | 이 옵션에 따라 콘텐츠가 클리핑됩니다(또는 클리핑되지 않습니다).                                                        | 
| children           | `List<Map<String, dynamic>>` | 트리에서 이 위젯 아래의 위젯들입니다.                                                                            |

## 예제 JSON

```json
{
      "type": "wrap",
      "spacing": 8.0,
      "runSpacing": 4.0,
      "children": [
        {
          "type": "container",
          "color": "#FFCDD2",
          "width": 100,
          "height": 100,
          "child": {
            "type": "center",
            "child": {
              "type": "text",
              "data": "1",
              "style": {
                "color": "#FFFFFF"
              }
            }
          }
        },
        {
          "type": "container",
          "color": "#F8BBD0",
          "width": 100,
          "height": 100,
          "child": {
            "type": "center",
            "child": {
              "type": "text",
              "data": "2",
              "style": {
                "color": "#FFFFFF"
              }
            }
          }
        },
        {
          "type": "container",
          "color": "#E1BEE7",
          "width": 100,
          "height": 100,
          "child": {
            "type": "center",
            "child": {
              "type": "text",
              "data": "3",
              "style": {
                "color": "#FFFFFF"
              }
            }
          }
        },
        {
          "type": "container",
          "color": "#D1C4E9",
          "width": 100,
          "height": 100,
          "child": {
            "type": "center",
            "child": {
              "type": "text",
              "data": "4",
              "style": {
                "color": "#FFFFFF"
              }
            }
          }
        },
      ]
    }
```


