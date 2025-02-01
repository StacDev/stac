# SafeArea

Stac `SafeArea` allows you to build the Flutter SafeArea widget using JSON. 
To know more about the SafeArea widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/SafeArea-class.html).

## Properties

| Property                  | Type                   | Description                                                                                                                                           |
|---------------------------|------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| child                     | `Map<String, dynamic>` | The child widget of the SafeArea.                                                                                                                     |
| left                      | `bool`                 | Whether to avoid system intrusions on the left.                                                                                                       |
| top                       | `bool`                 | Whether to avoid system intrusions at the top of the screen, typically the system status bar.                                                         |
| right                     | `bool`                 | Whether to avoid system intrusions on the right.                                                                                                      |
| bottom                    | `bool`                 | Whether to avoid system intrusions on the bottom side of the screen.                                                                                  |
| minimum                   | `StacEdgeInsets`      | This minimum padding to apply.                                                                                                                        |
| maintainBottomViewPadding | `bool`                 | Specifies whether the SafeArea should maintain the bottom MediaQueryData.viewPadding instead of the bottom MediaQueryData.padding, defaults to false. |

## Example JSON

```json
{
  "type":  "safeArea",
  "child":  {
    "type":  "text",
    "data":  "Hello, World!",
    "style":  {
      "color":  "#FFFFFF",
      "fontSize":  24.0
    }
  }
}
```
