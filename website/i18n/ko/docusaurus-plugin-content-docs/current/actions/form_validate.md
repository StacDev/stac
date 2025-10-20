# Form Validate Action

`StacFormValidateAction` 클래스는 Stac 애플리케이션에서 폼의 유효성을 검사하는 데 사용됩니다.

## 속성

| Property    | Type                    | Description                                                                 |
|-------------|-------------------------|-----------------------------------------------------------------------------|
| isValid     | `Map<String, dynamic>`  | 폼이 유효한 경우 수행할 action.                                 |
| isNotValid  | `Map<String, dynamic>`  | 폼이 유효하지 않은 경우 수행할 action.                             |

## 예제 JSON

### Form Validate Action JSON

```json
{
  "actionType": "validateForm",
  "isValid": {
    "actionType": "showDialog",
    "widget": {
      "type": "text",
      "data": "Form is valid!"
    }
  },
  "isNotValid": {
    "actionType": "showDialog",
    "widget": {
      "type": "text",
      "data": "Form is not valid!"
    }
  }
}
```
