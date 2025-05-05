// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_gesture_detector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacGestureDetector _$StacGestureDetectorFromJson(Map<String, dynamic> json) =>
    _StacGestureDetector(
      child: json['child'] as Map<String, dynamic>?,
      onTapDown: json['onTapDown'] as Map<String, dynamic>?,
      onTapUp: json['onTapUp'] as Map<String, dynamic>?,
      onTap: json['onTap'] as Map<String, dynamic>?,
      onTapCancel: json['onTapCancel'] as Map<String, dynamic>?,
      onSecondaryTap: json['onSecondaryTap'] as Map<String, dynamic>?,
      onSecondaryTapDown: json['onSecondaryTapDown'] as Map<String, dynamic>?,
      onSecondaryTapUp: json['onSecondaryTapUp'] as Map<String, dynamic>?,
      onSecondaryTapCancel:
          json['onSecondaryTapCancel'] as Map<String, dynamic>?,
      onTertiaryTapDown: json['onTertiaryTapDown'] as Map<String, dynamic>?,
      onTertiaryTapUp: json['onTertiaryTapUp'] as Map<String, dynamic>?,
      onTertiaryTapCancel: json['onTertiaryTapCancel'] as Map<String, dynamic>?,
      onDoubleTapDown: json['onDoubleTapDown'] as Map<String, dynamic>?,
      onDoubleTap: json['onDoubleTap'] as Map<String, dynamic>?,
      onDoubleTapCancel: json['onDoubleTapCancel'] as Map<String, dynamic>?,
      onLongPressDown: json['onLongPressDown'] as Map<String, dynamic>?,
      onLongPressCancel: json['onLongPressCancel'] as Map<String, dynamic>?,
      onLongPress: json['onLongPress'] as Map<String, dynamic>?,
      onLongPressStart: json['onLongPressStart'] as Map<String, dynamic>?,
      onLongPressMoveUpdate:
          json['onLongPressMoveUpdate'] as Map<String, dynamic>?,
      onLongPressUp: json['onLongPressUp'] as Map<String, dynamic>?,
      onLongPressEnd: json['onLongPressEnd'] as Map<String, dynamic>?,
      onSecondaryLongPressDown:
          json['onSecondaryLongPressDown'] as Map<String, dynamic>?,
      onSecondaryLongPressCancel:
          json['onSecondaryLongPressCancel'] as Map<String, dynamic>?,
      onSecondaryLongPress:
          json['onSecondaryLongPress'] as Map<String, dynamic>?,
      onSecondaryLongPressStart:
          json['onSecondaryLongPressStart'] as Map<String, dynamic>?,
      onSecondaryLongPressMoveUpdate:
          json['onSecondaryLongPressMoveUpdate'] as Map<String, dynamic>?,
      onSecondaryLongPressUp:
          json['onSecondaryLongPressUp'] as Map<String, dynamic>?,
      onSecondaryLongPressEnd:
          json['onSecondaryLongPressEnd'] as Map<String, dynamic>?,
      onTertiaryLongPressDown:
          json['onTertiaryLongPressDown'] as Map<String, dynamic>?,
      onTertiaryLongPressCancel:
          json['onTertiaryLongPressCancel'] as Map<String, dynamic>?,
      onTertiaryLongPress: json['onTertiaryLongPress'] as Map<String, dynamic>?,
      onTertiaryLongPressStart:
          json['onTertiaryLongPressStart'] as Map<String, dynamic>?,
      onTertiaryLongPressMoveUpdate:
          json['onTertiaryLongPressMoveUpdate'] as Map<String, dynamic>?,
      onTertiaryLongPressUp:
          json['onTertiaryLongPressUp'] as Map<String, dynamic>?,
      onTertiaryLongPressEnd:
          json['onTertiaryLongPressEnd'] as Map<String, dynamic>?,
      onVerticalDragDown: json['onVerticalDragDown'] as Map<String, dynamic>?,
      onVerticalDragStart: json['onVerticalDragStart'] as Map<String, dynamic>?,
      onVerticalDragUpdate:
          json['onVerticalDragUpdate'] as Map<String, dynamic>?,
      onVerticalDragEnd: json['onVerticalDragEnd'] as Map<String, dynamic>?,
      onVerticalDragCancel:
          json['onVerticalDragCancel'] as Map<String, dynamic>?,
      onHorizontalDragDown:
          json['onHorizontalDragDown'] as Map<String, dynamic>?,
      onHorizontalDragStart:
          json['onHorizontalDragStart'] as Map<String, dynamic>?,
      onHorizontalDragUpdate:
          json['onHorizontalDragUpdate'] as Map<String, dynamic>?,
      onHorizontalDragEnd: json['onHorizontalDragEnd'] as Map<String, dynamic>?,
      onHorizontalDragCancel:
          json['onHorizontalDragCancel'] as Map<String, dynamic>?,
      onForcePressStart: json['onForcePressStart'] as Map<String, dynamic>?,
      onForcePressPeak: json['onForcePressPeak'] as Map<String, dynamic>?,
      onForcePressUpdate: json['onForcePressUpdate'] as Map<String, dynamic>?,
      onForcePressEnd: json['onForcePressEnd'] as Map<String, dynamic>?,
      excludeFromSemantics: json['excludeFromSemantics'] as bool? ?? false,
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
    );

Map<String, dynamic> _$StacGestureDetectorToJson(
        _StacGestureDetector instance) =>
    <String, dynamic>{
      'child': instance.child,
      'onTapDown': instance.onTapDown,
      'onTapUp': instance.onTapUp,
      'onTap': instance.onTap,
      'onTapCancel': instance.onTapCancel,
      'onSecondaryTap': instance.onSecondaryTap,
      'onSecondaryTapDown': instance.onSecondaryTapDown,
      'onSecondaryTapUp': instance.onSecondaryTapUp,
      'onSecondaryTapCancel': instance.onSecondaryTapCancel,
      'onTertiaryTapDown': instance.onTertiaryTapDown,
      'onTertiaryTapUp': instance.onTertiaryTapUp,
      'onTertiaryTapCancel': instance.onTertiaryTapCancel,
      'onDoubleTapDown': instance.onDoubleTapDown,
      'onDoubleTap': instance.onDoubleTap,
      'onDoubleTapCancel': instance.onDoubleTapCancel,
      'onLongPressDown': instance.onLongPressDown,
      'onLongPressCancel': instance.onLongPressCancel,
      'onLongPress': instance.onLongPress,
      'onLongPressStart': instance.onLongPressStart,
      'onLongPressMoveUpdate': instance.onLongPressMoveUpdate,
      'onLongPressUp': instance.onLongPressUp,
      'onLongPressEnd': instance.onLongPressEnd,
      'onSecondaryLongPressDown': instance.onSecondaryLongPressDown,
      'onSecondaryLongPressCancel': instance.onSecondaryLongPressCancel,
      'onSecondaryLongPress': instance.onSecondaryLongPress,
      'onSecondaryLongPressStart': instance.onSecondaryLongPressStart,
      'onSecondaryLongPressMoveUpdate': instance.onSecondaryLongPressMoveUpdate,
      'onSecondaryLongPressUp': instance.onSecondaryLongPressUp,
      'onSecondaryLongPressEnd': instance.onSecondaryLongPressEnd,
      'onTertiaryLongPressDown': instance.onTertiaryLongPressDown,
      'onTertiaryLongPressCancel': instance.onTertiaryLongPressCancel,
      'onTertiaryLongPress': instance.onTertiaryLongPress,
      'onTertiaryLongPressStart': instance.onTertiaryLongPressStart,
      'onTertiaryLongPressMoveUpdate': instance.onTertiaryLongPressMoveUpdate,
      'onTertiaryLongPressUp': instance.onTertiaryLongPressUp,
      'onTertiaryLongPressEnd': instance.onTertiaryLongPressEnd,
      'onVerticalDragDown': instance.onVerticalDragDown,
      'onVerticalDragStart': instance.onVerticalDragStart,
      'onVerticalDragUpdate': instance.onVerticalDragUpdate,
      'onVerticalDragEnd': instance.onVerticalDragEnd,
      'onVerticalDragCancel': instance.onVerticalDragCancel,
      'onHorizontalDragDown': instance.onHorizontalDragDown,
      'onHorizontalDragStart': instance.onHorizontalDragStart,
      'onHorizontalDragUpdate': instance.onHorizontalDragUpdate,
      'onHorizontalDragEnd': instance.onHorizontalDragEnd,
      'onHorizontalDragCancel': instance.onHorizontalDragCancel,
      'onForcePressStart': instance.onForcePressStart,
      'onForcePressPeak': instance.onForcePressPeak,
      'onForcePressUpdate': instance.onForcePressUpdate,
      'onForcePressEnd': instance.onForcePressEnd,
      'excludeFromSemantics': instance.excludeFromSemantics,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
    };

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};
