# Border Radius

StacBorderRadius를 사용하면 JSON을 통해 Flutter BorderRadius 클래스를 구성할 수 있습니다.
Flutter의 BorderRadius 클래스에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/painting/BorderRadius-class.html)를 참조하세요.

## 속성

| 속성   | 타입                   | 설명                                                |
| ------ | ---------------------- | --------------------------------------------------- |
| radius | `double?`              | 모든 모서리에 적용할 border Radius를 정의합니다.     |
| radius | `Map<String, double>?` | 각 모서리의 border Radius를 명시적으로 정의합니다.   |
| radius | `List<double>?`        | 각 모서리의 border Radius를 명시적으로 정의합니다.   |

:::note

위의 세 가지 속성은 모두 선택 사항입니다. 즉, `StacBorderRadius`는 위의 3가지 방법 중 하나를 사용하여 정의할 수 있습니다.

:::

## 예제

// 일반 선언
```json
{
    "borderRadius": 16.0
}
```
// 명시적 선언
```json
{
    "borderRadius": {
        "topLeft": 16.0,
        "topRight": 16.0,
        "bottomLeft": 16.0,
        "bottomRight": 16.0
    }
}
```

// 명시적 선언 (리스트)
```json
{
    "borderRadius": [
    16.0,
    16.0,
    16.0,
    16.0
    ]
}
```
