import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_gesture_detector.g.dart';

/// A Stac model for a widget that detects gestures.
///
/// Attempts to recognize gestures that correspond to its non-null callbacks.
/// If this widget has a child, it defers to that child for dispatching
/// semantics announcements. If it does not have a child, it acts as a
/// leaf in the semantics tree.
///
/// Corresponds to Flutter's [GestureDetector] widget.
///
/// Example:
///
/// ```dart
/// StacGestureDetector(
///   onTap: StacAction(type: StacActionType.debugLog, args: {'message': 'Tapped!'}),
///   child: StacContainer(
///     width: 100,
///     height: 100,
///     color: '#00FF00', // Green
///     child: StacCenter(child: StacText('Tap Me')),
///   ),
/// )
/// ```
///
/// ```json
/// {
///   "widget": "GestureDetector",
///   "onTap": {
///     "type": "debugLog",
///     "args": {"message": "Tapped!"}
///   },
///   "child": {
///     "widget": "Container",
///     "width": 100,
///     "height": 100,
///     "color": "#00FF00",
///     "child": {
///       "widget": "Center",
///       "child": {
///         "widget": "Text",
///         "data": "Tap Me"
///       }
///     }
///   }
/// }
/// ```
///
/// See also:
///  * Flutter's [GestureDetector documentation](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html)
@JsonSerializable(explicitToJson: true)
class StacGestureDetector extends StacWidget {
  /// Creates a [StacGestureDetector].
  ///
  /// All properties are optional. The parser will provide appropriate defaults
  /// from Flutter's [GestureDetector] if they are not specified.
  const StacGestureDetector({
    this.child,
    this.onTap,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onSecondaryTap,
    this.onSecondaryTapDown,
    this.onSecondaryTapUp,
    this.onSecondaryTapCancel,
    this.onTertiaryTapDown,
    this.onTertiaryTapUp,
    this.onTertiaryTapCancel,
    this.onDoubleTap,
    this.onDoubleTapDown,
    this.onDoubleTapCancel,
    this.onLongPress,
    this.onLongPressDown,
    this.onLongPressStart,
    this.onLongPressMoveUpdate,
    this.onLongPressUp,
    this.onLongPressEnd,
    this.onLongPressCancel,
    this.onSecondaryLongPress,
    this.onSecondaryLongPressDown,
    this.onSecondaryLongPressStart,
    this.onSecondaryLongPressMoveUpdate,
    this.onSecondaryLongPressUp,
    this.onSecondaryLongPressEnd,
    this.onSecondaryLongPressCancel,
    this.onTertiaryLongPress,
    this.onTertiaryLongPressDown,
    this.onTertiaryLongPressStart,
    this.onTertiaryLongPressMoveUpdate,
    this.onTertiaryLongPressUp,
    this.onTertiaryLongPressEnd,
    this.onTertiaryLongPressCancel,
    this.onVerticalDragDown,
    this.onVerticalDragStart,
    this.onVerticalDragUpdate,
    this.onVerticalDragEnd,
    this.onVerticalDragCancel,
    this.onHorizontalDragDown,
    this.onHorizontalDragStart,
    this.onHorizontalDragUpdate,
    this.onHorizontalDragEnd,
    this.onHorizontalDragCancel,
    this.onForcePressStart,
    this.onForcePressPeak,
    this.onForcePressUpdate,
    this.onForcePressEnd,
    this.onPanDown,
    this.onPanStart,
    this.onPanUpdate,
    this.onPanEnd,
    this.onPanCancel,
    this.onScaleStart,
    this.onScaleUpdate,
    this.onScaleEnd,
    this.behavior,
    this.excludeFromSemantics,
    this.dragStartBehavior,
  });

  /// The widget below this widget in the tree.
  final StacWidget? child;

  // --- Tap Callbacks ---
  /// An action to perform when a tap has occurred.
  final StacAction? onTap;

  /// An action to perform when a pointer that might cause a tap has contacted the screen.
  final StacAction? onTapDown;

  /// An action to perform when a pointer that will trigger a tap has stopped contacting the screen.
  final StacAction? onTapUp;

  /// An action to perform when the pointer that previously triggered [onTapDown] will not end up causing a tap.
  final StacAction? onTapCancel;

  // --- Secondary Tap Callbacks ---
  /// An action to perform when a secondary tap has occurred.
  final StacAction? onSecondaryTap;

  /// An action to perform when a pointer that might cause a secondary tap has contacted the screen.
  final StacAction? onSecondaryTapDown;

  /// An action to perform when a pointer that will trigger a secondary tap has stopped contacting the screen.
  final StacAction? onSecondaryTapUp;

  /// An action to perform when the pointer that previously triggered [onSecondaryTapDown] will not end up causing a tap.
  final StacAction? onSecondaryTapCancel;

  // --- Tertiary Tap Callbacks ---
  /// An action to perform when a pointer that might cause a tertiary tap has contacted the screen.
  final StacAction? onTertiaryTapDown;

  /// An action to perform when a pointer that will trigger a tertiary tap has stopped contacting the screen.
  final StacAction? onTertiaryTapUp;

  /// An action to perform when the pointer that previously triggered [onTertiaryTapDown] will not end up causing a tap.
  final StacAction? onTertiaryTapCancel;

  // --- Double Tap Callbacks ---
  /// An action to perform when the user has tapped the screen with a primary button at the same location twice in quick succession.
  final StacAction? onDoubleTap;

  /// An action to perform when a pointer that might cause a double tap has contacted the screen at a particular location.
  final StacAction? onDoubleTapDown;

  /// An action to perform when the pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap.
  final StacAction? onDoubleTapCancel;

  // --- Long Press Callbacks ---
  /// An action to perform when a long press gesture has been recognized.
  final StacAction? onLongPress;

  /// A pointer has contacted the screen and might begin to move for a long press.
  final StacAction? onLongPressDown;

  /// An action to perform when a pointer has remained in contact with the screen at the same location for a long period.
  final StacAction? onLongPressStart;

  /// An action to perform when a pointer is moving after a long press gesture has been recognized.
  final StacAction? onLongPressMoveUpdate;

  /// An action to perform when a pointer stops contacting the screen after a long press gesture was recognized.
  final StacAction? onLongPressUp;

  /// An action to perform when a pointer stops contacting the screen after a long press gesture was recognized.
  final StacAction? onLongPressEnd;

  /// Called when the pointer that previously triggered [onLongPressDown] will not end up causing a long press.
  final StacAction? onLongPressCancel;

  // --- Secondary Long Press Callbacks ---
  /// An action to perform when a secondary long press gesture has been recognized.
  final StacAction? onSecondaryLongPress;

  /// A pointer for a secondary button has contacted the screen and might begin to move for a long press.
  final StacAction? onSecondaryLongPressDown;

  /// An action to perform when a pointer has remained in contact with the screen at the same location for a long period for a secondary button.
  final StacAction? onSecondaryLongPressStart;

  /// An action to perform when a pointer is moving after a secondary long press gesture has been recognized.
  final StacAction? onSecondaryLongPressMoveUpdate;

  /// An action to perform when a pointer stops contacting the screen after a secondary long press gesture was recognized.
  final StacAction? onSecondaryLongPressUp;

  /// An action to perform when a pointer stops contacting the screen after a secondary long press gesture was recognized.
  final StacAction? onSecondaryLongPressEnd;

  /// Called when the pointer that previously triggered [onSecondaryLongPressDown] will not end up causing a long press for a secondary button.
  final StacAction? onSecondaryLongPressCancel;

  // --- Tertiary Long Press Callbacks ---
  /// An action to perform when a tertiary long press gesture has been recognized.
  final StacAction? onTertiaryLongPress;

  /// A pointer for a tertiary button has contacted the screen and might begin to move for a long press.
  final StacAction? onTertiaryLongPressDown;

  /// An action to perform when a pointer has remained in contact with the screen at the same location for a long period for a tertiary button.
  final StacAction? onTertiaryLongPressStart;

  /// An action to perform when a pointer is moving after a tertiary long press gesture has been recognized.
  final StacAction? onTertiaryLongPressMoveUpdate;

  /// An action to perform when a pointer stops contacting the screen after a tertiary long press gesture was recognized.
  final StacAction? onTertiaryLongPressUp;

  /// An action to perform when a pointer stops contacting the screen after a tertiary long press gesture was recognized.
  final StacAction? onTertiaryLongPressEnd;

  /// Called when the pointer that previously triggered [onTertiaryLongPressDown] will not end up causing a long press for a tertiary button.
  final StacAction? onTertiaryLongPressCancel;

  // --- Vertical Drag Callbacks ---
  /// An action to perform when a pointer has contacted the screen and might begin to move vertically.
  final StacAction? onVerticalDragDown;

  /// An action to perform when a pointer has contacted the screen and has begun to move vertically.
  final StacAction? onVerticalDragStart;

  /// An action to perform when a pointer that is in contact with the screen and moving vertically has moved in the vertical direction.
  final StacAction? onVerticalDragUpdate;

  /// An action to perform when a pointer that was previously in contact with the screen and moving vertically is no longer in contact with the screen.
  final StacAction? onVerticalDragEnd;

  /// An action to perform when the pointer that previously triggered [onVerticalDragDown] did not complete.
  final StacAction? onVerticalDragCancel;

  // --- Horizontal Drag Callbacks ---
  /// An action to perform when a pointer has contacted the screen and might begin to move horizontally.
  final StacAction? onHorizontalDragDown;

  /// An action to perform when a pointer has contacted the screen and has begun to move horizontally.
  final StacAction? onHorizontalDragStart;

  /// An action to perform when a pointer that is in contact with the screen and moving horizontally has moved in the horizontal direction.
  final StacAction? onHorizontalDragUpdate;

  /// An action to perform when a pointer that was previously in contact with the screen and moving horizontally is no longer in contact with the screen.
  final StacAction? onHorizontalDragEnd;

  /// An action to perform when the pointer that previously triggered [onHorizontalDragDown] did not complete.
  final StacAction? onHorizontalDragCancel;

  // --- Force Press Callbacks (Note: Force touch is deprecated on iOS) ---
  /// An action to perform when a pointer has contacted the screen and has exerted a pressure sufficient to initiate a force press.
  final StacAction? onForcePressStart;

  /// An action to perform when a pointer that is in contact with the screen and has exerted a pressure sufficient to initiate a force press has reached maximum pressure.
  final StacAction? onForcePressPeak;

  /// An action to perform when a pointer that is in contact with the screen and has exerted a pressure sufficient to initiate a force press has most recently moved.
  final StacAction? onForcePressUpdate;

  /// An action to perform when a pointer that was previously in contact with the screen and has exerted a pressure sufficient to initiate a force press is no longer in contact with the screen.
  final StacAction? onForcePressEnd;

  // --- Pan Callbacks ---
  /// An action to perform when a pointer has contacted the screen and might begin to move.
  final StacAction? onPanDown;

  /// An action to perform when a pointer has contacted the screen and has begun to move.
  final StacAction? onPanStart;

  /// An action to perform when a pointer that is in contact with the screen and moving has moved again.
  final StacAction? onPanUpdate;

  /// An action to perform when a pointer that was previously in contact with the screen and moving is no longer in contact with the screen.
  final StacAction? onPanEnd;

  /// An action to perform when the pointer that previously triggered [onPanDown] did not complete.
  final StacAction? onPanCancel;

  // --- Scale Callbacks ---
  /// An action to perform when the pointers in contact with the screen have established a focal point and initial scale of 1.0.
  final StacAction? onScaleStart;

  /// An action to perform when the pointers in contact with the screen have indicated a new focal point and/or scale.
  final StacAction? onScaleUpdate;

  /// An action to perform when the pointers are no longer in contact with the screen.
  final StacAction? onScaleEnd;

  /// How this gesture detector should behave during hit testing.
  /// This defaults to [StacHitTestBehavior.deferToChild] if [child] is not null and
  /// [StacHitTestBehavior.translucent] if [child] is null.
  final StacHitTestBehavior? behavior;

  /// Whether to exclude these gestures from the semantics tree.
  final bool? excludeFromSemantics;

  /// Determines the way that drag start behavior is handled.
  /// Defaults to [StacDragStartBehavior.start].
  final StacDragStartBehavior? dragStartBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.gestureDetector.name;

  /// Creates a [StacGestureDetector] from JSON.
  factory StacGestureDetector.fromJson(Map<String, dynamic> json) =>
      _$StacGestureDetectorFromJson(json);

  /// Converts this StacGestureDetector to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacGestureDetectorToJson(this);
}
