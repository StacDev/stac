import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_children.dart';
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
    final children = StacChildren(
      context,
      children: model.children,
      items: model.items,
      itemTemplate: model.itemTemplate,
      keyPath: model.keyPath,
    );
    final empty = children.emptyReplacement(context, model.emptyWidget);
    if (empty != null) return empty;

    return TabBarView(
      controller: controller,
      physics: model.physics?.parse,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      viewportFraction: model.viewportFraction ?? 1.0,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      children: children.buildAll(context),
    );
  }
}
