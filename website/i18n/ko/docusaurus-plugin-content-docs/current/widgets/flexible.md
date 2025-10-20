# Flexible

Stac Flexible을 사용하면 JSON을 사용하여 Flutter flexible widget을 빌드할 수 있습니다.
Flutter의 flexible widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/Flexible-class.html)를 참조하세요.

## Properties

| Property | Type                    | Description                                                      |
|----------|-------------------------|------------------------------------------------------------------|
| child    | `Map<String, dynamic>?` | flexible widget 내부에 표시할 widget입니다.                            |
| flex     | `int`                   | flexible widget에 사용할 flex factor입니다. 기본값은 `1`입니다.             |
| fit      | `FlexFit`               | child가 사용 가능한 공간에 어떻게 배치될지 지정합니다. 기본값은 `FlexFit.loose`입니다. |

## Example JSON

```json
{
  "type": "flexible",
  "flex": 2,
  "fit": "tight",
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```
