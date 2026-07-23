import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_drag_start_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_scroll_physics_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTabBarViewParser extends StacParser<StacTabBarView> {
  const StacTabBarViewParser({this.controller});

  final TabController? controller;

  @override
  StacTabBarView getModel(Map<String, dynamic> json) =>
      StacTabBarView.fromJson(json);

  @override
  String get type => WidgetType.tabBarView.name;

  @override
  Widget parse(BuildContext context, StacTabBarView model) {
    return TabBarView(
      controller: controller,
      physics: model.physics?.parse,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      viewportFraction: model.viewportFraction ?? 1.0,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      children: model.children
          .map((c) => c.parse(context) ?? const SizedBox())
          .toList(),
    );
  }
}
