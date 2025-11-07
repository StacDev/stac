import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_drag_start_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_hit_test_behavior_parser.dart';
import 'package:stac_core/stac_core.dart';
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
          ? (_) => model.onTapDown!.parse(context)
          : null,
      onTapUp: model.onTapUp != null
          ? (_) => model.onTapUp!.parse(context)
          : null,
      onTap: model.onTap != null ? () => model.onTap!.parse(context) : null,
      onTapCancel: model.onTapCancel != null
          ? () => model.onTapCancel!.parse(context)
          : null,
      onSecondaryTap: model.onSecondaryTap != null
          ? () => model.onSecondaryTap!.parse(context)
          : null,
      onSecondaryTapDown: model.onSecondaryTapDown != null
          ? (_) => model.onSecondaryTapDown!.parse(context)
          : null,
      onSecondaryTapUp: model.onSecondaryTapUp != null
          ? (_) => model.onSecondaryTapUp!.parse(context)
          : null,
      onSecondaryTapCancel: model.onSecondaryTapCancel != null
          ? () => model.onSecondaryTapCancel!.parse(context)
          : null,
      onTertiaryTapDown: model.onTertiaryTapDown != null
          ? (_) => model.onTertiaryTapDown!.parse(context)
          : null,
      onTertiaryTapUp: model.onTertiaryTapUp != null
          ? (_) => model.onTertiaryTapUp!.parse(context)
          : null,
      onTertiaryTapCancel: model.onTertiaryTapCancel != null
          ? () => model.onTertiaryTapCancel!.parse(context)
          : null,
      onDoubleTapDown: model.onDoubleTapDown != null
          ? (_) => model.onDoubleTapDown!.parse(context)
          : null,
      onDoubleTap: model.onDoubleTap != null
          ? () => model.onDoubleTap!.parse(context)
          : null,
      onDoubleTapCancel: model.onDoubleTapCancel != null
          ? () => model.onDoubleTapCancel!.parse(context)
          : null,
      onLongPressDown: model.onLongPressDown != null
          ? (_) => model.onLongPressDown!.parse(context)
          : null,
      onLongPressCancel: model.onLongPressCancel != null
          ? () => model.onLongPressCancel!.parse(context)
          : null,
      onLongPress: model.onLongPress != null
          ? () => model.onLongPress!.parse(context)
          : null,
      onLongPressStart: model.onLongPressStart != null
          ? (_) => model.onLongPressStart!.parse(context)
          : null,
      onLongPressMoveUpdate: model.onLongPressMoveUpdate != null
          ? (_) => model.onLongPressMoveUpdate!.parse(context)
          : null,
      onLongPressUp: model.onLongPressUp != null
          ? () => model.onLongPressUp!.parse(context)
          : null,
      onLongPressEnd: model.onLongPressEnd != null
          ? (_) => model.onLongPressEnd!.parse(context)
          : null,
      onSecondaryLongPressDown: model.onSecondaryLongPressDown != null
          ? (_) => model.onSecondaryLongPressDown!.parse(context)
          : null,
      onSecondaryLongPressCancel: model.onSecondaryLongPressCancel != null
          ? () => model.onSecondaryLongPressCancel!.parse(context)
          : null,
      onSecondaryLongPress: model.onSecondaryLongPress != null
          ? () => model.onSecondaryLongPress!.parse(context)
          : null,
      onSecondaryLongPressStart: model.onSecondaryLongPressStart != null
          ? (_) => model.onSecondaryLongPressStart!.parse(context)
          : null,
      onSecondaryLongPressMoveUpdate:
          model.onSecondaryLongPressMoveUpdate != null
          ? (_) => model.onSecondaryLongPressMoveUpdate!.parse(context)
          : null,
      onSecondaryLongPressUp: model.onSecondaryLongPressUp != null
          ? () => model.onSecondaryLongPressUp!.parse(context)
          : null,
      onSecondaryLongPressEnd: model.onSecondaryLongPressEnd != null
          ? (_) => model.onSecondaryLongPressEnd!.parse(context)
          : null,
      onTertiaryLongPressDown: model.onTertiaryLongPressDown != null
          ? (_) => model.onTertiaryLongPressDown!.parse(context)
          : null,
      onTertiaryLongPressCancel: model.onTertiaryLongPressCancel != null
          ? () => model.onTertiaryLongPressCancel!.parse(context)
          : null,
      onTertiaryLongPress: model.onTertiaryLongPress != null
          ? () => model.onTertiaryLongPress!.parse(context)
          : null,
      onTertiaryLongPressStart: model.onTertiaryLongPressStart != null
          ? (_) => model.onTertiaryLongPressStart!.parse(context)
          : null,
      onTertiaryLongPressMoveUpdate: model.onTertiaryLongPressMoveUpdate != null
          ? (_) => model.onTertiaryLongPressMoveUpdate!.parse(context)
          : null,
      onTertiaryLongPressUp: model.onTertiaryLongPressUp != null
          ? () => model.onTertiaryLongPressUp!.parse(context)
          : null,
      onTertiaryLongPressEnd: model.onTertiaryLongPressEnd != null
          ? (_) => model.onTertiaryLongPressEnd!.parse(context)
          : null,
      onVerticalDragDown: model.onVerticalDragDown != null
          ? (_) => model.onVerticalDragDown!.parse(context)
          : null,
      onVerticalDragStart: model.onVerticalDragStart != null
          ? (_) => model.onVerticalDragStart!.parse(context)
          : null,
      onVerticalDragUpdate: model.onVerticalDragUpdate != null
          ? (_) => model.onVerticalDragUpdate!.parse(context)
          : null,
      onVerticalDragEnd: model.onVerticalDragEnd != null
          ? (_) => model.onVerticalDragEnd!.parse(context)
          : null,
      onVerticalDragCancel: model.onVerticalDragCancel != null
          ? () => model.onVerticalDragCancel!.parse(context)
          : null,
      onHorizontalDragDown: model.onHorizontalDragDown != null
          ? (_) => model.onHorizontalDragDown!.parse(context)
          : null,
      onHorizontalDragStart: model.onHorizontalDragStart != null
          ? (_) => model.onHorizontalDragStart!.parse(context)
          : null,
      onHorizontalDragUpdate: model.onHorizontalDragUpdate != null
          ? (_) => model.onHorizontalDragUpdate!.parse(context)
          : null,
      onHorizontalDragEnd: model.onHorizontalDragEnd != null
          ? (_) => model.onHorizontalDragEnd!.parse(context)
          : null,
      onHorizontalDragCancel: model.onHorizontalDragCancel != null
          ? () => model.onHorizontalDragCancel!.parse(context)
          : null,
      onForcePressStart: model.onForcePressStart != null
          ? (_) => model.onForcePressStart!.parse(context)
          : null,
      onForcePressPeak: model.onForcePressPeak != null
          ? (_) => model.onForcePressPeak!.parse(context)
          : null,
      onForcePressUpdate: model.onForcePressUpdate != null
          ? (_) => model.onForcePressUpdate!.parse(context)
          : null,
      onForcePressEnd: model.onForcePressEnd != null
          ? (_) => model.onForcePressEnd!.parse(context)
          : null,
      onPanDown: model.onPanDown != null
          ? (_) => model.onPanDown!.parse(context)
          : null,
      onPanStart: model.onPanStart != null
          ? (_) => model.onPanStart!.parse(context)
          : null,
      onPanUpdate: model.onPanUpdate != null
          ? (_) => model.onPanUpdate!.parse(context)
          : null,
      onPanEnd: model.onPanEnd != null
          ? (_) => model.onPanEnd!.parse(context)
          : null,
      onPanCancel: model.onPanCancel != null
          ? () => model.onPanCancel!.parse(context)
          : null,
      onScaleStart: model.onScaleStart != null
          ? (_) => model.onScaleStart!.parse(context)
          : null,
      onScaleUpdate: model.onScaleUpdate != null
          ? (_) => model.onScaleUpdate!.parse(context)
          : null,
      onScaleEnd: model.onScaleEnd != null
          ? (_) => model.onScaleEnd!.parse(context)
          : null,
      behavior: model.behavior?.parse,
      excludeFromSemantics: model.excludeFromSemantics ?? false,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      child: model.child.parse(context),
    );
  }
}
