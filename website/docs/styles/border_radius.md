# Border Radius

MiraiBorderRadius allows you to build the Flutter BorderRadius class using JSON.
To know more about the BorderRadius class in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/painting/BorderRadius-class.html).

## Properties

| Property | Type                   | Description                                                        |
| -------- | ---------------------- | ------------------------------------------------------------------ |
| radius   | `double?`              | Defines the border Radius for all corners to be painted.           |
| radius   | `Map<String, double>?` | Defines the border Radius of each corner to be painted explicitly. |
| radius   | `List<double>?`        | Defines the border Radius of each corner to be painted explicitly. |

:::note

Above three properties defined are optional. i.e. `MiraiBorderRadius` can be defined using one of the above 3 methods.

:::

## Example

```json
// Generic Declaration
{
    "borderRadius": 16.0
}

// Explicit Declaration
{
    "borderRadius": {
        "topLeft": 16.0,
        "topRight": 16.0,
        "bottomLeft": 16.0,
        "bottomRight": 16.0
    }
}

// Explicit Declaration (List)
{
    "borderRadius": [
    16.0, //topLeft
    16.0, //topRight
    16.0, //bottomLeft
    16.0, //bottomRight
    ]
}
```