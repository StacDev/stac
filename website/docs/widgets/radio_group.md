# RadioGroup

Stac radioGroup allows you to build the Flutter Radio widgets using JSON. 
To know more about the Radio widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/Radio-class.html).

## RadioGroup Properties

| Property   | Type                   | Description                                                |
|------------|------------------------|------------------------------------------------------------|
| id         | `String`               | The id will be used to save the selected value of radio.   |
| groupValue | `dynamic`              | The currently selected value for a group of radio buttons. |
| child      | `Map<String, dynamic>` | The child of radioGroup.                                   |

## Radio Properties

| Property                   | Type                    | Description                                                                                                     |
|----------------------------|-------------------------|-----------------------------------------------------------------------------------------------------------------|
| radioType                  | `StacRadioType`        | The type of radio.                                                                                              |
| value                      | `dynamic`               | The value represented by this radio.                                                                            |
| onChanged                  | `Map<String, dynamic>`  | The action needs trigger when radio value change.                                                               |
| mouseCursor                | `StacMouseCursor`      | The cursor for a mouse pointer when it enters or is hovering over the radio.                                    |
| toggleable                 | `bool`                  | Set to true if this wanted to deselect when selected.                                                           |
| activeColor                | `String`                | The color to use when this radio button is selected.                                                            |
| inactiveColor              | `String`                | The color to use when this radio button is not selected.                                                        |
| fillColor                  | `String`                | The color that fills the radio button, in all WidgetStates.                                                     |
| focusColor                 | `String`                | The color for the radio's Material when it has the input focus.                                                 |
| hoverColor                 | `String`                | The color for the radio's Material when a pointer is hovering over it.                                          |
| overlayColor               | `String`                | The color for the radio's Material.                                                                             |
| splashRadius               | `double`                | The splash radius of the circular Material ink response.                                                        |
| materialTapTargetSize      | `MaterialTapTargetSize` | Configures the minimum size of the tap target.                                                                  |
| visualDensity              | `StacVisualDensity`    | Defines how compact the radio's layout will be.                                                                 |
| autofocus                  | `bool`                  | True if this widget will be selected as the initial focus when no other node in its scope is currently focused. |
| useCheckmarkStyle          | `bool`                  | Controls whether the radio displays in a checkbox style or the default iOS radio style.                         |
| useCupertinoCheckmarkStyle | `bool`                  | Controls whether the checkmark style is used in an iOS-style radio.                                             |


## Example JSON

```json
{
  "type": "radioGroup",
  "child": {
    "type": "column",
    "children": [
      {
        "type": "listTile",
        "leading": {
          "type": "radio",
          "radioType": "adaptive",
          "value": "1",
          "groupValue": "1"
        },
        "title": {
          "type": "text",
          "data": "Male",
          "align": "center",
          "style": {
            "fontSize": 21
          }
        }
      },
      {
        "type": "listTile",
        "leading": {
          "type": "radio",
          "radioType": "adaptive",
          "value": "2",
          "groupValue": "1"
        },
        "title": {
          "type": "text",
          "data": "Female",
          "align": "center",
          "style": {
            "fontSize": 21
          }
        }
      },
      {
        "type": "listTile",
        "leading": {
          "type": "radio",
          "radioType": "adaptive",
          "value": "3",
          "groupValue": "1"
        },
        "title": {
          "type": "text",
          "data": "Other",
          "align": "center",
          "style": {
            "fontSize": 21
          }
        }
      }
    ]
  }
}
```

