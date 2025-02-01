# Form Validate Action

The `StacFormValidateAction` class is used to validate a form in Stac applications.

## Properties

| Property    | Type                    | Description                                                                 |
|-------------|-------------------------|-----------------------------------------------------------------------------|
| isValid     | `Map<String, dynamic>`  | The action to perform if the form is valid.                                 |
| isNotValid  | `Map<String, dynamic>`  | The action to perform if the form is not valid.                             |

## Example JSON

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