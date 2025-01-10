# Slider

Mirai slider allows you to build the Flutter Slider widget using JSON. 
To know more about the Slider widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Slider-class.html).

## Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| id | `String`  | The id will be used to save the selected value of slider. |
| sliderType | `MiraiSliderType` | The type of slider. |
| value | `MiraiSliderType` | The currently selected value for this slider. |
| secondaryTrackValue | `double` | The secondary track used to draw progress between the thumb and this value, over the inactive track. |
| onChanged | `Map<String, dynamic>` | Called during a drag when the user is selecting a new value for the slider. |
| onChangeStart | `Map<String, dynamic>` | Called when the user starts selecting a new value for the slider. |
| onChangeEnd | `Map<String, dynamic>` | Called when the user is done selecting a new value for the slider. |
| min | `double` | The minimum value the user can select. |
| max | `double` | The maximum value the user can select. |
| divisions | `int` | The number of discrete divisions. |
| label | `String` | A label to show above the slider when the slider is active |
| activeColor | `String` | The color to use for the portion of the slider track that is active. |
| inactiveColor | `String` | The color for the inactive portion of the slider track. |
| secondaryActiveColor | `String` | The color to use for the portion of the slider track between the thumb and secondaryTrackValue |
| thumbColor | `String` | The color of the thumb. |
| overlayColor | `String` | The highlight color that's typically used to indicate that the slider thumb is focused, hovered, or dragged. |
| mouseCursor | `MiraiMouseCursor` | The cursor for a mouse pointer when it enters or is hovering over the widget. |
| autofocus | `bool` | True if this widget will be selected as the initial focus when no other node in its scope is currently focused. |
| allowedInteraction | `SliderInteraction` | Allowed way for the user to interact with the slider. |


## Example JSON

```json
{
    "type": "scaffold",
    "appBar": {
        "type": "appBar",
        "title": {
            "type": "text",
            "data": "Mirai Slider"
        }
    },
    "body": {
        "type": "form",
        "child": {
            "type": "center",
            "child": {
                "id": "example_slider",
                "type": "slider",
                "sliderType": "material",
                "value": 20,
                "max": 100,
                "divisions": 5
            }
        }
    }
}
```