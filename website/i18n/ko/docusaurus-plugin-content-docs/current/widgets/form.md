# Form

Stac Form을 사용하면 JSON을 이용하여 Flutter form widget을 구축할 수 있습니다.
Flutter의 form widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/Form-class.html)를 참조하세요.

## Properties

| Property          | Type                    | Description                                                                 |
|-------------------|-------------------------|-----------------------------------------------------------------------------|
| autovalidateMode  | `AutovalidateMode?`     | 자동 검증을 제어하는 모드입니다.                                        |
| child             | `Map<String, dynamic>`  | form 내부에 표시할 widget입니다.                                      |

## Example JSON

```json
{
  "type": "form",
  "autovalidateMode": "always",
  "child": {
    "type": "column",
    "children": [
      {
        "type": "textFormField",
        "id": "username",
        "decoration": {
          "labelText": "Username"
        }
      },
      {
        "type": "textFormField",
        "id": "password",
        "decoration": {
          "labelText": "Password"
        }
      },
      {
        "type": "filledButton",
        "child": {
          "type": "text",
          "data": "Submit"
        },
        "onPressed": {
          "actionType": "validateForm",
          "isValid": {
            "actionType": "networkRequest",
            "url": "https://dummyjson.com/auth/login",
            "method": "post",
            "contentType": "application/json",
            "body": {
              "username": {
                "actionType": "getFormValue",
                "id": "username"
              },
              "password": {
                "actionType": "getFormValue",
                "id": "password"
              }
            }
          }
        }
      }
    ]
  }
}
```
