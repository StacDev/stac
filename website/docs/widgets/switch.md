# Switch

The Mirai `Switch` widget allows you to build the Flutter Switch widget using JSON.
To know more about the Switch widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Switch-class.html).

## Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| switchType | `MiraiSwitchType`  | The type of the Switch. |
| value | `bool` | Whether this switch is on or off. |
| onChanged | `Map<String, dynamic>` | Called when the user toggles the switch on or off. |
| autofocus | `bool` | True if this widget will be selected as the initial focus when no other node in its scope is currently focused. |
| activeColor | `String` | The color to use when this switch is on. |
| activeTrackColor | `String` | The color to use on the track when this switch is on. |
| focusColor | `String` | The color for the button's when it has the input focus. |
| hoverColor | `String` | The color for the button's when a pointer is hovering over it. |
| inactiveThumbColor | `String` | The color to use on the thumb when this switch is off. |
| inactiveTrackColor | `String` | The color to use on the track when this switch is off. |
| onLabelColor | `String` | The color to use for the accessibility label when the switch is on. |
| offLabelColor | `String` | The color to use for the accessibility label when the switch is off. |
| splashRadius | `double` | The splash radius of the circular ink response. |
| dragStartBehavior | `DragStartBehavior` | Determines the way that drag start behavior is handled. |
| overlayColor | `MiraiMaterialColor` | The color for the switch. |
| thumbColor | `MiraiMaterialColor` | The color of this Switch's thumb. |
| trackColor | `MiraiMaterialColor` | TThe color of this Switch's track. |
| materialTapTargetSize | `MaterialTapTargetSize` | Configures the minimum size of the tap target. |
| trackOutlineColor | `MiraiMaterialColor` | The outline color of this Switch's track. |
| thumbIcon | `Map<String, dynamic>` | The icon to use on the thumb of this switch. |
| inactiveThumbImage | `String` | An image to use on the thumb of this switch when the switch is off. |
| activeThumbImage | `String` | An image to use on the thumb of this switch when the switch is on. |
| applyTheme | `bool` | Whether to apply the ambient theme data. |
| applyCupertinoTheme | `bool` | Whether to apply the ambient theme data. |

## Example JSON

### Example 1: Cupertino Switch

```json
{
  "type": "switch",
  "switchType": "cupertino",
  "value": true
}
```

### Example 2: Adaptive Switch

```json
{
  "type": "switch",
  "switchType": "adaptive",
  "value": true
}
```

### Example 3: Material Switch

```json
{
  "type": "switch",
  "switchType": "material",
  "value": false
}
```
