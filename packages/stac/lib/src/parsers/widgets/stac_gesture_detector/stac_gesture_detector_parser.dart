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
      onTapDown: (_) => Stac.onCallFromJson(model.onTapDown, context),
      onTapUp: (_) => Stac.onCallFromJson(model.onTapUp, context),
      onTap: () => Stac.onCallFromJson(model.onTap, context),
      onTapCancel: () => Stac.onCallFromJson(model.onTapCancel, context),
      onSecondaryTap: () => Stac.onCallFromJson(model.onSecondaryTap, context),
      onSecondaryTapDown: (_) =>
          Stac.onCallFromJson(model.onSecondaryTapDown, context),
      onSecondaryTapUp: (_) =>
          Stac.onCallFromJson(model.onSecondaryTapUp, context),
      onSecondaryTapCancel: () =>
          Stac.onCallFromJson(model.onSecondaryTapCancel, context),
      onTertiaryTapDown: (_) =>
          Stac.onCallFromJson(model.onTertiaryTapDown, context),
      onTertiaryTapUp: (_) =>
          Stac.onCallFromJson(model.onTertiaryTapUp, context),
      onTertiaryTapCancel: () =>
          Stac.onCallFromJson(model.onTertiaryTapCancel, context),
      onDoubleTapDown: (_) =>
          Stac.onCallFromJson(model.onDoubleTapDown, context),
      onDoubleTap: () => Stac.onCallFromJson(model.onDoubleTap, context),
      onDoubleTapCancel: () =>
          Stac.onCallFromJson(model.onDoubleTapCancel, context),
      onLongPressDown: (_) =>
          Stac.onCallFromJson(model.onLongPressDown, context),
      onLongPressCancel: () =>
          Stac.onCallFromJson(model.onLongPressCancel, context),
      onLongPress: () => Stac.onCallFromJson(model.onLongPress, context),
      onLongPressStart: (_) =>
          Stac.onCallFromJson(model.onLongPressStart, context),
      onLongPressMoveUpdate: (_) =>
          Stac.onCallFromJson(model.onLongPressMoveUpdate, context),
      onLongPressUp: () => Stac.onCallFromJson(model.onLongPressUp, context),
      onLongPressEnd: (_) => Stac.onCallFromJson(model.onLongPressEnd, context),
      onSecondaryLongPressDown: (_) =>
          Stac.onCallFromJson(model.onSecondaryLongPressDown, context),
      onSecondaryLongPressCancel: () =>
          Stac.onCallFromJson(model.onSecondaryLongPressCancel, context),
      onSecondaryLongPress: () =>
          Stac.onCallFromJson(model.onSecondaryLongPress, context),
      onSecondaryLongPressStart: (_) =>
          Stac.onCallFromJson(model.onSecondaryLongPressStart, context),
      onSecondaryLongPressMoveUpdate: (_) =>
          Stac.onCallFromJson(model.onSecondaryLongPressMoveUpdate, context),
      onSecondaryLongPressUp: () =>
          Stac.onCallFromJson(model.onSecondaryLongPressUp, context),
      onSecondaryLongPressEnd: (_) =>
          Stac.onCallFromJson(model.onSecondaryLongPressEnd, context),
      onTertiaryLongPressDown: (_) =>
          Stac.onCallFromJson(model.onTertiaryLongPressDown, context),
      onTertiaryLongPressCancel: () =>
          Stac.onCallFromJson(model.onTertiaryLongPressCancel, context),
      onTertiaryLongPress: () =>
          Stac.onCallFromJson(model.onTertiaryLongPress, context),
      onTertiaryLongPressStart: (_) =>
          Stac.onCallFromJson(model.onTertiaryLongPressStart, context),
      onTertiaryLongPressMoveUpdate: (_) =>
          Stac.onCallFromJson(model.onTertiaryLongPressMoveUpdate, context),
      onTertiaryLongPressUp: () =>
          Stac.onCallFromJson(model.onTertiaryLongPressUp, context),
      onTertiaryLongPressEnd: (_) =>
          Stac.onCallFromJson(model.onTertiaryLongPressEnd, context),
      onVerticalDragDown: (_) =>
          Stac.onCallFromJson(model.onVerticalDragDown, context),
      onVerticalDragStart: (_) =>
          Stac.onCallFromJson(model.onVerticalDragStart, context),
      onVerticalDragUpdate: (_) =>
          Stac.onCallFromJson(model.onVerticalDragUpdate, context),
      onVerticalDragEnd: (_) =>
          Stac.onCallFromJson(model.onVerticalDragEnd, context),
      onVerticalDragCancel: () =>
          Stac.onCallFromJson(model.onVerticalDragCancel, context),
      onHorizontalDragDown: (_) =>
          Stac.onCallFromJson(model.onHorizontalDragDown, context),
      onHorizontalDragStart: (_) =>
          Stac.onCallFromJson(model.onHorizontalDragStart, context),
      onHorizontalDragUpdate: (_) =>
          Stac.onCallFromJson(model.onHorizontalDragUpdate, context),
      onHorizontalDragEnd: (_) =>
          Stac.onCallFromJson(model.onHorizontalDragEnd, context),
      onHorizontalDragCancel: () =>
          Stac.onCallFromJson(model.onHorizontalDragCancel, context),
      onForcePressStart: (_) =>
          Stac.onCallFromJson(model.onForcePressStart, context),
      onForcePressPeak: (_) =>
          Stac.onCallFromJson(model.onForcePressPeak, context),
      onForcePressUpdate: (_) =>
          Stac.onCallFromJson(model.onForcePressUpdate, context),
      onForcePressEnd: (_) =>
          Stac.onCallFromJson(model.onForcePressEnd, context),
      excludeFromSemantics: model.excludeFromSemantics,
      dragStartBehavior: model.dragStartBehavior,
      child: Stac.fromJson(model.child, context),
    );
  }
}
