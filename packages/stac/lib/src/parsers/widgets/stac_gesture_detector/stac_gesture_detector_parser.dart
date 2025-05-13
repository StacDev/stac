import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_gesture_detector/stac_gesture_detector.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacGestureDetectorParser extends StacParser<StacGestureDetector> {
  const StacGestureDetectorParser();

  @override
  String get type => WidgetType.gestureDetector.name;

  @override
  StacGestureDetector getModel(Map<String, dynamic> json) =>
      StacGestureDetector.fromJson(json);

  @override
  Widget parse(BuildContext context, StacGestureDetector model) {
    return GestureDetector(
      onTapDown: model.onTapDown != null
          ? (_) => Stac.onCallFromJson(model.onTapDown, context)
          : null,
      onTapUp: model.onTapUp != null
          ? (_) => Stac.onCallFromJson(model.onTapUp, context)
          : null,
      onTap: model.onTap != null
          ? () => Stac.onCallFromJson(model.onTap, context)
          : null,
      onTapCancel: model.onTapCancel != null
          ? () => Stac.onCallFromJson(model.onTapCancel, context)
          : null,
      onSecondaryTap: model.onSecondaryTap != null
          ? () => Stac.onCallFromJson(model.onSecondaryTap, context)
          : null,
      onSecondaryTapDown: model.onSecondaryTapDown != null
          ? (_) => Stac.onCallFromJson(model.onSecondaryTapDown, context)
          : null,
      onSecondaryTapUp: model.onSecondaryTapUp != null
          ? (_) => Stac.onCallFromJson(model.onSecondaryTapUp, context)
          : null,
      onSecondaryTapCancel: model.onSecondaryTapCancel != null
          ? () => Stac.onCallFromJson(model.onSecondaryTapCancel, context)
          : null,
      onTertiaryTapDown: model.onTertiaryTapDown != null
          ? (_) => Stac.onCallFromJson(model.onTertiaryTapDown, context)
          : null,
      onTertiaryTapUp: model.onTertiaryTapUp != null
          ? (_) => Stac.onCallFromJson(model.onTertiaryTapUp, context)
          : null,
      onTertiaryTapCancel: model.onTertiaryTapCancel != null
          ? () => Stac.onCallFromJson(model.onTertiaryTapCancel, context)
          : null,
      onDoubleTapDown: model.onDoubleTapDown != null
          ? (_) => Stac.onCallFromJson(model.onDoubleTapDown, context)
          : null,
      onDoubleTap: model.onDoubleTap != null
          ? () => Stac.onCallFromJson(model.onDoubleTap, context)
          : null,
      onDoubleTapCancel: model.onDoubleTapCancel != null
          ? () => Stac.onCallFromJson(model.onDoubleTapCancel, context)
          : null,
      onLongPressDown: model.onLongPressDown != null
          ? (_) => Stac.onCallFromJson(model.onLongPressDown, context)
          : null,
      onLongPressCancel: model.onLongPressCancel != null
          ? () => Stac.onCallFromJson(model.onLongPressCancel, context)
          : null,
      onLongPress: model.onLongPress != null
          ? () => Stac.onCallFromJson(model.onLongPress, context)
          : null,
      onLongPressStart: model.onLongPressStart != null
          ? (_) => Stac.onCallFromJson(model.onLongPressStart, context)
          : null,
      onLongPressMoveUpdate: model.onLongPressMoveUpdate != null
          ? (_) => Stac.onCallFromJson(model.onLongPressMoveUpdate, context)
          : null,
      onLongPressUp: model.onLongPressUp != null
          ? () => Stac.onCallFromJson(model.onLongPressUp, context)
          : null,
      onLongPressEnd: model.onLongPressEnd != null
          ? (_) => Stac.onCallFromJson(model.onLongPressEnd, context)
          : null,
      onSecondaryLongPressDown: model.onSecondaryLongPressDown != null
          ? (_) => Stac.onCallFromJson(model.onSecondaryLongPressDown, context)
          : null,
      onSecondaryLongPressCancel: model.onSecondaryLongPressCancel != null
          ? () => Stac.onCallFromJson(model.onSecondaryLongPressCancel, context)
          : null,
      onSecondaryLongPress: model.onSecondaryLongPress != null
          ? () => Stac.onCallFromJson(model.onSecondaryLongPress, context)
          : null,
      onSecondaryLongPressStart: model.onSecondaryLongPressStart != null
          ? (_) => Stac.onCallFromJson(model.onSecondaryLongPressStart, context)
          : null,
      onSecondaryLongPressMoveUpdate: model.onSecondaryLongPressMoveUpdate !=
              null
          ? (_) =>
              Stac.onCallFromJson(model.onSecondaryLongPressMoveUpdate, context)
          : null,
      onSecondaryLongPressUp: model.onSecondaryLongPressUp != null
          ? () => Stac.onCallFromJson(model.onSecondaryLongPressUp, context)
          : null,
      onSecondaryLongPressEnd: model.onSecondaryLongPressEnd != null
          ? (_) => Stac.onCallFromJson(model.onSecondaryLongPressEnd, context)
          : null,
      onTertiaryLongPressDown: model.onTertiaryLongPressDown != null
          ? (_) => Stac.onCallFromJson(model.onTertiaryLongPressDown, context)
          : null,
      onTertiaryLongPressCancel: model.onTertiaryLongPressCancel != null
          ? () => Stac.onCallFromJson(model.onTertiaryLongPressCancel, context)
          : null,
      onTertiaryLongPress: model.onTertiaryLongPress != null
          ? () => Stac.onCallFromJson(model.onTertiaryLongPress, context)
          : null,
      onTertiaryLongPressStart: model.onTertiaryLongPressStart != null
          ? (_) => Stac.onCallFromJson(model.onTertiaryLongPressStart, context)
          : null,
      onTertiaryLongPressMoveUpdate: model.onTertiaryLongPressMoveUpdate != null
          ? (_) =>
              Stac.onCallFromJson(model.onTertiaryLongPressMoveUpdate, context)
          : null,
      onTertiaryLongPressUp: model.onTertiaryLongPressUp != null
          ? () => Stac.onCallFromJson(model.onTertiaryLongPressUp, context)
          : null,
      onTertiaryLongPressEnd: model.onTertiaryLongPressEnd != null
          ? (_) => Stac.onCallFromJson(model.onTertiaryLongPressEnd, context)
          : null,
      onVerticalDragDown: model.onVerticalDragDown != null
          ? (_) => Stac.onCallFromJson(model.onVerticalDragDown, context)
          : null,
      onVerticalDragStart: model.onVerticalDragStart != null
          ? (_) => Stac.onCallFromJson(model.onVerticalDragStart, context)
          : null,
      onVerticalDragUpdate: model.onVerticalDragUpdate != null
          ? (_) => Stac.onCallFromJson(model.onVerticalDragUpdate, context)
          : null,
      onVerticalDragEnd: model.onVerticalDragEnd != null
          ? (_) => Stac.onCallFromJson(model.onVerticalDragEnd, context)
          : null,
      onVerticalDragCancel: model.onVerticalDragCancel != null
          ? () => Stac.onCallFromJson(model.onVerticalDragCancel, context)
          : null,
      onHorizontalDragDown: model.onHorizontalDragDown != null
          ? (_) => Stac.onCallFromJson(model.onHorizontalDragDown, context)
          : null,
      onHorizontalDragStart: model.onHorizontalDragStart != null
          ? (_) => Stac.onCallFromJson(model.onHorizontalDragStart, context)
          : null,
      onHorizontalDragUpdate: model.onHorizontalDragUpdate != null
          ? (_) => Stac.onCallFromJson(model.onHorizontalDragUpdate, context)
          : null,
      onHorizontalDragEnd: model.onHorizontalDragEnd != null
          ? (_) => Stac.onCallFromJson(model.onHorizontalDragEnd, context)
          : null,
      onHorizontalDragCancel: model.onHorizontalDragCancel != null
          ? () => Stac.onCallFromJson(model.onHorizontalDragCancel, context)
          : null,
      onForcePressStart: model.onForcePressStart != null
          ? (_) => Stac.onCallFromJson(model.onForcePressStart, context)
          : null,
      onForcePressPeak: model.onForcePressPeak != null
          ? (_) => Stac.onCallFromJson(model.onForcePressPeak, context)
          : null,
      onForcePressUpdate: model.onForcePressUpdate != null
          ? (_) => Stac.onCallFromJson(model.onForcePressUpdate, context)
          : null,
      onForcePressEnd: model.onForcePressEnd != null
          ? (_) => Stac.onCallFromJson(model.onForcePressEnd, context)
          : null,
      excludeFromSemantics: model.excludeFromSemantics,
      dragStartBehavior: model.dragStartBehavior,
      child: Stac.fromJson(model.child, context),
    );
  }
}
