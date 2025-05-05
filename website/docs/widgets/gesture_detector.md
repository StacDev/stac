# GestureDetector

The `GestureDetector` widget in Stac allows you to detect various gestures and user interactions within your application. It wraps Flutter's native GestureDetector widget, providing a JSON-based interface to handle touch events, taps, drags, and more.

## Usage

To use a GestureDetector in your Stac JSON, specify the widget type as "gestureDetector" and provide a child widget along with any gesture callbacks you want to handle.

```json
{
  "type": "gestureDetector",
  "child": {
    "type": "container",
    "color": "#2196F3",
    "width": 200,
    "height": 200,
    "alignment": "center",
    "child": {
      "type": "text",
      "data": "Tap me!",
      "style": {
        "color": "#FFFFFF",
        "fontSize": 20
      }
    }
  },
  "onTap": {
    "actionType": "showSnackBar",
    "content": {
      "type": "text",
      "data": "This is a Snackbar"
    }
  }
}
```

## Properties

### Child Widget

| Property | Type | Description |
|----------|------|-------------|
| `child` | Widget | The widget that will respond to gestures |

### Tap Gestures

| Property | Type | Description |
|----------|------|-------------|
| `onTapDown` | Action | Called when a pointer contacts the screen |
| `onTapUp` | Action | Called when a pointer stops contacting the screen |
| `onTap` | Action | Called when a tap occurs |
| `onTapCancel` | Action | Called when the tap is canceled |
| `onDoubleTapDown` | Action | Called when a pointer contacts the screen in a potential double tap |
| `onDoubleTap` | Action | Called when a double tap occurs |
| `onDoubleTapCancel` | Action | Called when the double tap is canceled |

### Secondary and Tertiary Tap Gestures

| Property | Type | Description |
|----------|------|-------------|
| `onSecondaryTap` | Action | Called when a secondary tap occurs (e.g., right-click) |
| `onSecondaryTapDown` | Action | Called when a secondary pointer contacts the screen |
| `onSecondaryTapUp` | Action | Called when a secondary pointer stops contacting the screen |
| `onSecondaryTapCancel` | Action | Called when the secondary tap is canceled |
| `onTertiaryTapDown` | Action | Called when a tertiary pointer contacts the screen |
| `onTertiaryTapUp` | Action | Called when a tertiary pointer stops contacting the screen |
| `onTertiaryTapCancel` | Action | Called when the tertiary tap is canceled |

### Long Press Gestures

| Property | Type | Description |
|----------|------|-------------|
| `onLongPressDown` | Action | Called when a pointer contacts the screen in a potential long press |
| `onLongPressCancel` | Action | Called when the long press is canceled |
| `onLongPress` | Action | Called when a long press occurs |
| `onLongPressStart` | Action | Called when a long press starts |
| `onLongPressMoveUpdate` | Action | Called when a long press move update occurs |
| `onLongPressUp` | Action | Called when a long press up occurs |
| `onLongPressEnd` | Action | Called when a long press ends |

### Secondary and Tertiary Long Press Gestures

| Property | Type | Description |
|----------|------|-------------|
| `onSecondaryLongPressDown` | Action | Called when a secondary pointer contacts the screen in a potential long press |
| `onSecondaryLongPressCancel` | Action | Called when the secondary long press is canceled |
| `onSecondaryLongPress` | Action | Called when a secondary long press occurs |
| `onSecondaryLongPressStart` | Action | Called when a secondary long press starts |
| `onSecondaryLongPressMoveUpdate` | Action | Called when a secondary long press move update occurs |
| `onSecondaryLongPressUp` | Action | Called when a secondary long press up occurs |
| `onSecondaryLongPressEnd` | Action | Called when a secondary long press ends |
| `onTertiaryLongPressDown` | Action | Called when a tertiary pointer contacts the screen in a potential long press |
| `onTertiaryLongPressCancel` | Action | Called when the tertiary long press is canceled |
| `onTertiaryLongPress` | Action | Called when a tertiary long press occurs |
| `onTertiaryLongPressStart` | Action | Called when a tertiary long press starts |
| `onTertiaryLongPressMoveUpdate` | Action | Called when a tertiary long press move update occurs |
| `onTertiaryLongPressUp` | Action | Called when a tertiary long press up occurs |
| `onTertiaryLongPressEnd` | Action | Called when a tertiary long press ends |

### Drag Gestures

| Property | Type | Description |
|----------|------|-------------|
| `onVerticalDragDown` | Action | Called when a pointer contacts the screen and might begin a vertical drag |
| `onVerticalDragStart` | Action | Called when a pointer starts a vertical drag |
| `onVerticalDragUpdate` | Action | Called when a pointer updates a vertical drag |
| `onVerticalDragEnd` | Action | Called when a pointer ends a vertical drag |
| `onVerticalDragCancel` | Action | Called when the vertical drag is canceled |
| `onHorizontalDragDown` | Action | Called when a pointer contacts the screen and might begin a horizontal drag |
| `onHorizontalDragStart` | Action | Called when a pointer starts a horizontal drag |
| `onHorizontalDragUpdate` | Action | Called when a pointer updates a horizontal drag |
| `onHorizontalDragEnd` | Action | Called when a pointer ends a horizontal drag |
| `onHorizontalDragCancel` | Action | Called when the horizontal drag is canceled |

### Force Press Gestures

| Property | Type | Description |
|----------|------|-------------|
| `onForcePressStart` | Action | Called when a force press starts |
| `onForcePressPeak` | Action | Called when a force press reaches its peak force |
| `onForcePressUpdate` | Action | Called when a force press updates |
| `onForcePressEnd` | Action | Called when a force press ends |

### Other Properties

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `excludeFromSemantics` | boolean | false | Whether to exclude the gestures from the semantics tree |
| `dragStartBehavior` | string | "start" | Determines when a drag formally starts ("start" or "down") |

## Examples

### Simple Tap Example

```json
{
  "type": "gestureDetector",
  "onTap": {
    "actionType": "navigate",
    "routeName": "/details"
  },
  "child": {
    "type": "container",
    "padding": 16,
    "color": "#E0E0E0",
    "child": {
      "type": "text",
      "data": "Navigate to Details"
    }
  }
}
```

### Drag Example

```json
{
  "type": "gestureDetector",
  "onHorizontalDragEnd": {
    "actionType": "handleSwipe"
  },
  "child": {
    "type": "container",
    "width": 200,
    "height": 200,
    "color": "#F5F5F5",
    "alignment": "center",
    "child": {
      "type": "text",
      "data": "Swipe horizontally"
    }
  }
}
```

### Long Press Example

```json
{
  "type": "gestureDetector",
  "onLongPress": {
    "actionType": "showDialog",
    "title": "Long Press Detected",
    "content": "You performed a long press on the widget."
  },
  "child": {
    "type": "container",
    "padding": 16,
    "decoration": {
      "color": "#4CAF50",
      "borderRadius": 8
    },
    "child": {
      "type": "text",
      "data": "Long press me",
      "style": {
        "color": "#FFFFFF"
      }
    }
  }
}
```

## Action Handling

Each gesture callback in Stac GestureDetector accepts an action object that defines what should happen when the gesture is detected. This can be a navigation action, showing a dialog, executing a custom function, or any other action supported by your Stac application.

For more information on actions, see the [Actions documentation](../actions/overview.md).
