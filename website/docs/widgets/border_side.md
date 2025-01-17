# Border Side

MiraiBorderSide allows you to define the Flutter BorderSide class using JSON.
To know more about the BorderSide class in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/painting/BorderSide-class.html).


| Property    | Type          | Description                                                                                     |
| ----------- | ------------- | ----------------------------------------------------------------------------------------------- |
| color       | `Color`       | Defines color of the border                                                                     |
| width       | `double`      | Defines thickness of the border. (logical px)                                                   |
| style       | `BorderStyle` | Defines the style of the border. Can be `solid` or `none`. Defaults to `solid`                  |
| strokeAlign | `double`      | Defines the relative position of the stroke on values range from -1.0 (inside) to 1.0 (outside) |



## Example

```json
{
    "color": "#428AF5",
    "width": 1.0,
    "style":"solid",
    "strokeAlign": 1.0,
}
```