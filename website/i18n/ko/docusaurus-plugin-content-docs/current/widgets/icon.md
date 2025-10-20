# Icon

Stac Icon을 사용하면 JSON을 사용하여 Flutter icon widget을 빌드할 수 있습니다.
Flutter의 icon widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/Icon-class.html)를 참조하세요.

## Properties

| Property      | Type             | Description                                          |
|---------------|------------------|------------------------------------------------------|
| icon          | `String`         | 표시할 icon의 이름입니다.                                     |
| iconType      | `IconType`       | icon의 타입입니다 (material, cupertino). 기본값은 `material`입니다. |
| size          | `double?`        | icon의 크기입니다.                                         |
| color         | `String?`        | icon의 색상입니다.                                         |
| semanticLabel | `String?`        | icon의 semantic label입니다.                             |
| textDirection | `TextDirection?` | icon의 text direction입니다.                             |

> 참고: 사용 가능한 icon을 확인하려면 [Icon utils](https://github.com/StacDev/stac/blob/dev/packages/stac/lib/src/utils/icon_utils.dart)를 참조하세요.

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
