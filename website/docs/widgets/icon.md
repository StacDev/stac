# Icon

The Mirai Icon allows you to build a Flutter icon widget using JSON.
To know more about the icon widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Icon-class.html).

## Properties

| Property      | Type             | Description                                                         |
|---------------|------------------|---------------------------------------------------------------------|
| icon          | `String`         | The name of the icon to display.                                    |
| iconType      | `IconType`       | The type of the icon (material, cupertino). Defaults to `material`. |
| size          | `double?`        | The size of the icon.                                               |
| color         | `String?`        | The color of the icon.                                              |
| semanticLabel | `String?`        | The semantic label for the icon.                                    |
| textDirection | `TextDirection?` | The text direction for the icon.                                    |

> Note: To check the available icons, refer to  [Icon utils](https://github.com/BuildMirai/mirai/blob/dev/packages/mirai/lib/src/utils/icon_utils.dart).

## Example JSON

```json
{
  "type": "icon",
  "icon": "home",
  "size": 24.0,
  "color": "#000000",
  "semanticLabel": "Home Icon",
  "textDirection": "ltr"
}
```