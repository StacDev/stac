import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_drag_start_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_scroll_physics_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_scroll_view_keyboard_dismiss_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_axis_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacListViewParser extends StacParser<StacListView> {
  const StacListViewParser({this.controller});

  final ScrollController? controller;

  @override
  String get type => WidgetType.listView.name;

  @override
  StacListView getModel(Map<String, dynamic> json) =>
      StacListView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacListView model) {
    return ListView.separated(
      scrollDirection: model.scrollDirection?.parse ?? Axis.vertical,
      reverse: model.reverse ?? false,
      controller: controller,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap ?? false,
      padding: model.padding?.parse,
      addAutomaticKeepAlives: model.addAutomaticKeepAlives ?? true,
      addRepaintBoundaries: model.addRepaintBoundaries ?? true,
      addSemanticIndexes: model.addSemanticIndexes ?? true,
      cacheExtent: model.cacheExtent,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      keyboardDismissBehavior:
          model.keyboardDismissBehavior?.parse ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      itemCount: model.children?.length ?? 0,
      itemBuilder: (context, index) {
        if (model.children == null || model.children!.isEmpty) {
          return const SizedBox();
        }
        return model.children![index].parse(context);
      },
      separatorBuilder: (context, _) =>
          model.separator.parse(context) ?? const SizedBox(),
    );
  }
}
