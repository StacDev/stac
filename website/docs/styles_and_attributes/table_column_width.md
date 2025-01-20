# Mirai Table Column Width

MiraiTableColumnWidth allows you to build the Flutter TableColumnWidth class using JSON.
To know more about the TableColumnWidth class in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/rendering/TableColumnWidth-class.html).

## Properties

| Property | Type                   | Description                                                                                                                              |
| -------- | ---------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| type     | MiraiTableColumnWidth? | Defines the type of columnWidth to be used. Can be `fixedColumnWidth`, `flexColumnWidth`, `fractionColumnWidth` & `intrinsicColumnWidth` |
| value    | double?                | Defines the value to be assigned to columnWidth. e.g. `5.0` would be `5px` in case of `fixedColumnWidth`                                 |

## Example

```json
{
    "type": "fixedColumnWidth",
    "value": 200.0
}
```