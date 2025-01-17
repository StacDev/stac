# SnackBar

Mirai snackBar allows you to show the Flutter SnackBar using JSON. 
To know more about the SnackBar widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/SnackBar-class.html).

## SnackBar Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| content | `Map<String, dynamic>` | The primary content of the snack bar. |
| backgroundColor | `String` | The snack bar's background color. |
| elevation | `double` | The z-coordinate at which to place the snack bar. This controls the size of the shadow below the snack bar. |
| margin | `MiraiEdgeInsets` | Empty space to surround the snack bar. |
| padding | `MiraiEdgeInsets` | The amount of padding to apply to the snack bar's content and optional action. |
| width | `double` | The width of the snack bar. |
| shape | `MiraiShapeBorder` | The shape of the snack bar. |
| hitTestBehavior | `HitTestBehavior` | Defines how the snack bar area, including margin, will behave during hit testing. |
| behavior | `SnackBarBehavior` | This defines the behavior and location of the snack bar. |
| action | `MiraiSnackBarAction` | An action that the user can take based on the snack bar. |
| actionOverflowThreshold | `double` | The percentage threshold for action widget's width before it overflows to a new line. |
| showCloseIcon | `bool` | Whether to include a close icon widget. |
| closeIconColor | `String` | An optional color for the close icon, if close icon visible. |
| duration | `MiraiDuration` | The duration for which the snack bar is visible. |
| onVisible | `Map<String, dynamic>` | Called the first time that the snackbar is visible. |
| dismissDirection | `DismissDirection` | The direction in which the SnackBar can be dismissed. |
| clipBehavior | `Clip` | The content will be clipped (or not) according to this option. |

## SnackBarAction Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| textColor | `String`  | The button label color. |
| disabledTextColor | `String` | The button disabled label color. |
| backgroundColor | `String` | The button background fill color. |
| disabledBackgroundColor | `String` | The button disabled label color. |
| label | `String` | The button label. |
| onPressed | `Map<String, dynamic>` | The callback to be called when the button is pressed. |

## Example JSON

```json
{
  "actionType": "showSnackBar",
  "content": {
    "type": "text",
    "data": "This is a Snackbar"
  },
  "action": {
    "label": "Done",
    "textColor": "#73C2FB",
    "onPressed": {}
  },
  "behavior": "floating"
}
```