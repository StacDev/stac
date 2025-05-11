# InkWell

**Stac InkWell** allows you to build the Flutter `InkWell` widget using JSON.  
To learn more about the `InkWell` widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/InkWell-class.html).


## Properties
| Property                | Type                         | Description                                                                 |
|-------------------------|------------------------------|-----------------------------------------------------------------------------|
| `child`                 | `Map<String, dynamic>?`      | The widget below this InkWell.     |
| `onTap`                 | `Map<String, dynamic>?`      | Called when the user taps the InkWell.                                     |
| `onDoubleTap`           | `Map<String, dynamic>?`      | Called when the user double taps the InkWell.                              |
| `onLongPress`           | `Map<String, dynamic>?`      | Called when the user presses and holds for a long duration.                |
| `onTapDown`             | `Map<String, dynamic>?`      | Called when a tap gesture starts.                                          |
| `onTapUp`               | `Map<String, dynamic>?`      | Called when a tap gesture is lifted.                                       |
| `onTapCancel`           | `Map<String, dynamic>?`      | Called when a tap gesture is aborted.                                      |
| `onSecondaryTap`        | `Map<String, dynamic>?`      | Called for a secondary tap (e.g., right-click on desktop).                 |
| `onSecondaryTapUp`      | `Map<String, dynamic>?`      | Called when a secondary tap is lifted.                                     |
| `onSecondaryTapDown`    | `Map<String, dynamic>?`      | Called when a secondary tap gesture starts.                                |
| `onSecondaryTapCancel`  | `Map<String, dynamic>?`      | Called when a secondary tap gesture is aborted.                            |
| `onHighlightChanged`    | `Map<String, dynamic>?`      | Called when the InkWell highlight changes (pressed state).                 |
| `onHover`               | `Map<String, dynamic>?`      | Called when a pointer enters or exits the widget area.                     |
| `mouseCursor`           | `StacMouseCursor?`           | Defines the mouse cursor when it hovers over the InkWell.                  |
| `focusColor`            | `String?`                    | Color of the focus highlight.                                              |
| `hoverColor`            | `String?`                    | Color when a pointer hovers over the InkWell.                              |
| `highlightColor`        | `String?`                    | Color when the InkWell is pressed.                                         |
| `overlayColor`          | `String?`                    | Ripple effect color over the child.                                        |
| `splashColor`           | `String?`                    | The splash color of the ripple.                                            |
| `radius`                | `double?`                    | Defines the splash radius.                                                 |
| `borderRadius`          | `StacBorderRadius?`          | Sets rounded corners for the ripple effect.                                |
| `customBorder`          | `StacBorder?`                | Custom border shape for clipping and ripple.                               |
| `enableFeedback`        | `@Default(true) bool`        | Whether to play feedback (e.g., sound, vibration) on tap.                  |
| `excludeFromSemantics`  | `@Default(false) bool`       | Whether to exclude from accessibility tools like screen readers.           |
| `canRequestFocus`       | `@Default(true) bool`        | Whether this widget can request focus.                                     |
| `onFocusChange`         | `Map<String, dynamic>?`      | Callback for when the focus changes.                                       |
| `autofocus`             | `@Default(false) bool`       | Automatically focuses when the widget is built.                            |
| `hoverDuration`         | `StacDuration?`              | Duration for the hover animation effect.                                   |

## Example JSON

```json
{
    "type": "inkWell",
    "child": {
        "type": "padding",
        "padding": {
            "top": 20,
            "bottom": 20,
            "right": 20,
            "left": 20
        },
        "child": {
            "type": "text",
            "data": "Hello, World! from Inkwell",
            "textAlign": "center"
        }
    },
    "splashColor": "#E1BEE7",
    "borderRadius": {
        "topLeft": 20,
        "topRight": 20,
        "bottomLeft": 20,
        "bottomRight": 20
    },
    "radius": 20,
    "hoverDuration": {
        "seconds": 10
    },
    "onTap": {}
}
```
