# Table Border

StacTableBorder를 사용하면 JSON을 통해 Flutter TableBorder 클래스를 정의할 수 있습니다.
Flutter의 TableBorder 클래스에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/rendering/TableBorder-class.html)를 참조하세요.

## 속성

| Property         | Type                | Description                                   |
|--------------|---------------------|----------------------------------------|
| color        | `String`            | 테이블 테두리의 색상을 정의합니다.      |
| width        | `double`            | 테이블 테두리의 너비를 정의합니다.      |
| style        | `BorderStyle`       | 테이블 테두리의 스타일을 정의합니다.    |
| borderRadius | `StacBorderRadius` | 테이블 테두리의 border radius를 정의합니다. |


## 예제

```json
{
    "tableBorder": {
        "color": "#000000",
        "width": 1.0,
        "style": "solid",
        "borderRadius": {
            "topLeft": 16.0,
            "topRight": 16.0,
            "bottomLeft": 16.0,
            "bottomRight": 16.0
        }
    }
}
```
