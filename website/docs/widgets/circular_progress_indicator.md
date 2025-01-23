# CircularProgressIndicator

Mirai circularProgressIndicator allows you to build the Flutter CircularProgressIndicator widget using JSON. 
To know more about the CircularProgressIndicator widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html).

## Properties

| Property        | Type        | Description                                                        |
|-----------------|-------------|--------------------------------------------------------------------|
| value           | `double`    | The progress of this progress indicator.                           |
| backgroundColor | `String`    | The hex color of the track being filled by the progress indicator. |
| color           | `String`    | The hex color of the progress indicator.                           |
| strokeWidth     | `double`    | The width of the progress indicator.                               |
| strokeAlign     | `double`    | The relative position of the stroke on progress indicator.         |
| semanticsLabel  | `String`    | Provides a textual description of the widget.                      |
| semanticsValue  | `String`    | Provides a textual description of the widget.                      |
| strokeCap       | `StrokeCap` | The progress indicator's line ending.                              |


## Example JSON

```json
{
  "type": "circularProgressIndicator",
  "color": "#541204",
  "strokeWidth": 6,
  "backgroundColor": "#FFD700",
  "strokeCap": "round"
}
```

