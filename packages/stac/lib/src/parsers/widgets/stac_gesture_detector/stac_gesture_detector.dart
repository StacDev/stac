import 'package:flutter/gestures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_gesture_detector_parser.dart';

part 'stac_gesture_detector.freezed.dart';
part 'stac_gesture_detector.g.dart';

@freezed
abstract class StacGestureDetector with _$StacGestureDetector {
  const factory StacGestureDetector({
    Map<String, dynamic>? child,
    Map<String, dynamic>? onTapDown,
    Map<String, dynamic>? onTapUp,
    Map<String, dynamic>? onTap,
    Map<String, dynamic>? onTapCancel,
    Map<String, dynamic>? onSecondaryTap,
    Map<String, dynamic>? onSecondaryTapDown,
    Map<String, dynamic>? onSecondaryTapUp,
    Map<String, dynamic>? onSecondaryTapCancel,
    Map<String, dynamic>? onTertiaryTapDown,
    Map<String, dynamic>? onTertiaryTapUp,
    Map<String, dynamic>? onTertiaryTapCancel,
    Map<String, dynamic>? onDoubleTapDown,
    Map<String, dynamic>? onDoubleTap,
    Map<String, dynamic>? onDoubleTapCancel,
    Map<String, dynamic>? onLongPressDown,
    Map<String, dynamic>? onLongPressCancel,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onLongPressStart,
    Map<String, dynamic>? onLongPressMoveUpdate,
    Map<String, dynamic>? onLongPressUp,
    Map<String, dynamic>? onLongPressEnd,
    Map<String, dynamic>? onSecondaryLongPressDown,
    Map<String, dynamic>? onSecondaryLongPressCancel,
    Map<String, dynamic>? onSecondaryLongPress,
    Map<String, dynamic>? onSecondaryLongPressStart,
    Map<String, dynamic>? onSecondaryLongPressMoveUpdate,
    Map<String, dynamic>? onSecondaryLongPressUp,
    Map<String, dynamic>? onSecondaryLongPressEnd,
    Map<String, dynamic>? onTertiaryLongPressDown,
    Map<String, dynamic>? onTertiaryLongPressCancel,
    Map<String, dynamic>? onTertiaryLongPress,
    Map<String, dynamic>? onTertiaryLongPressStart,
    Map<String, dynamic>? onTertiaryLongPressMoveUpdate,
    Map<String, dynamic>? onTertiaryLongPressUp,
    Map<String, dynamic>? onTertiaryLongPressEnd,
    Map<String, dynamic>? onVerticalDragDown,
    Map<String, dynamic>? onVerticalDragStart,
    Map<String, dynamic>? onVerticalDragUpdate,
    Map<String, dynamic>? onVerticalDragEnd,
    Map<String, dynamic>? onVerticalDragCancel,
    Map<String, dynamic>? onHorizontalDragDown,
    Map<String, dynamic>? onHorizontalDragStart,
    Map<String, dynamic>? onHorizontalDragUpdate,
    Map<String, dynamic>? onHorizontalDragEnd,
    Map<String, dynamic>? onHorizontalDragCancel,
    Map<String, dynamic>? onForcePressStart,
    Map<String, dynamic>? onForcePressPeak,
    Map<String, dynamic>? onForcePressUpdate,
    Map<String, dynamic>? onForcePressEnd,
    @Default(false) bool excludeFromSemantics,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
  }) = _StacGestureDetector;

  factory StacGestureDetector.fromJson(Map<String, dynamic> json) =>
      _$StacGestureDetectorFromJson(json);
}
