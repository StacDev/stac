# LinearProgressIndicator

Stac linearProgressIndicator allows you to build the Flutter LinearProgressIndicator widget using JSON. 
To know more about the LinearProgressIndicator widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html).

## Properties

| Property        | Type                | Description                                                        |
|-----------------|---------------------|--------------------------------------------------------------------|
| value           | `double`            | The progress of this progress indicator.                           |
| backgroundColor | `String`            | The hex color of the track being filled by the progress indicator. |
| color           | `String`            | The hex color of the progress indicator.                           |
| minHeight       | `double`            | The height of the progress indicator.                              |
| semanticsLabel  | `String`            | Provides a textual description of the widget.                      |
| semanticsValue  | `String`            | Provides a textual description of the widget.                      |
| borderRadius    | `StacBorderRadius` | The border radius for progress indicator.                          |


## Example JSON

```json
{
  "type": "linearProgressIndicator",
  "color": "#541204",
  "minHeight": 6,
  "backgroundColor": "#FFD700",
  "borderRadius": {
    "topLeft": 10,
    "topRight": 10,
    "bottomLeft": 10,
    "bottomRight": 10
  }
}
```

