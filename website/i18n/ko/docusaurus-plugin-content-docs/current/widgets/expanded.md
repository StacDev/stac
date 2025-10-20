# Expanded

Stac Expanded를 사용하면 JSON을 통해 Flutter expanded widget을 구성할 수 있습니다.
Flutter의 expanded widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/Expanded-class.html)를 참조하세요.

## Properties

| 속성   | 타입                     | 설명                                                       |
|--------|--------------------------|-----------------------------------------------------------|
| flex   | `int`                   | expanded widget에 사용할 flex 인수입니다. 기본값은 `1`입니다.     |
| child  | `Map<String, dynamic>?` | expanded widget 내부에 표시할 widget입니다.                   |

## Example JSON

```json
{
  "type": "expanded",
  "flex": 2,
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```
