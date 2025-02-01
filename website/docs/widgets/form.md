# Form

The Stac Form allows you to build a Flutter form widget using JSON.
To know more about the form widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Form-class.html).

## Properties

| Property          | Type                    | Description                                                                 |
|-------------------|-------------------------|-----------------------------------------------------------------------------|
| autovalidateMode  | `AutovalidateMode?`     | The mode to control auto validation.                                        |
| child             | `Map<String, dynamic>`  | The widget to display inside the form.                                      |

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