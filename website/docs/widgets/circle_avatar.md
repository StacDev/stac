# CircleAvatar

The Stac CircleAvatar allows you to build a Flutter circle avatar widget using JSON.
To know more about the circle avatar widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/CircleAvatar-class.html).

## Properties

| Property                | Type                    | Description                                                                 |
|-------------------------|-------------------------|-----------------------------------------------------------------------------|
| child                   | `Map<String, dynamic>?` | The widget to display inside the circle avatar.                             |
| backgroundColor         | `String?`               | The background color of the circle avatar.                                  |
| backgroundImage         | `String?`               | The background image of the circle avatar.                                  |
| foregroundImage         | `String?`               | The foreground image of the circle avatar.                                  |
| onBackgroundImageError  | `Map<String, dynamic>?` | The error widget to display if the background image fails to load.          |
| onForegroundImageError  | `Map<String, dynamic>?` | The error widget to display if the foreground image fails to load.          |
| foregroundColor         | `String?`               | The color of the circle avatar's foreground elements.                       |
| radius                  | `double?`               | The radius of the circle avatar.                                            |
| minRadius               | `double?`               | The minimum radius of the circle avatar.                                    |
| maxRadius               | `double?`               | The maximum radius of the circle avatar.                                    |

## Example JSON

```json
{
  "type": "circleAvatar",
  "backgroundColor": "#FF0000",
  "foregroundColor": "#FFFFFF",
  "backgroundImage": "https://raw.githubusercontent.com/BuildStac/stac/refs/heads/dev/assets/companies/bettrdo.jpg",
  "radius": 50,
  "child": {
    "type": "text",
    "data": "A"
  }
}
```