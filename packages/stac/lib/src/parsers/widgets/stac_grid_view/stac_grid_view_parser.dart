import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_drag_start_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_scroll_physics_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_scroll_view_keyboard_dismiss_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_axis_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacGridViewParser extends StacParser<StacGridView> {
  const StacGridViewParser();

  @override
  String get type => WidgetType.gridView.name;

  @override
  StacGridView getModel(Map<String, dynamic> json) =>
      StacGridView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacGridView model) {
    return GridView.builder(
      scrollDirection: model.scrollDirection?.parse ?? Axis.vertical,
      reverse: model.reverse ?? false,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap ?? false,
      padding: model.padding?.parse,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: model.crossAxisCount ?? 0,
        mainAxisSpacing: model.mainAxisSpacing ?? 0.0,
        crossAxisSpacing: model.crossAxisSpacing ?? 0.0,
        childAspectRatio: model.childAspectRatio ?? 1.0,
        mainAxisExtent: model.mainAxisExtent,
      ),
      addAutomaticKeepAlives: model.addAutomaticKeepAlives ?? true,
      addRepaintBoundaries: model.addRepaintBoundaries ?? true,
      addSemanticIndexes: model.addSemanticIndexes ?? true,
      scrollCacheExtent: model.cacheExtent == null
          ? null
          : ScrollCacheExtent.pixels(model.cacheExtent!),
      itemBuilder: (context, index) {
        final children = model.children;
        if (children == null || index >= children.length) {
          return const SizedBox.shrink();
        }
        // Parse in the item's own element, so theme colors and text styles
        // resolved while parsing update when the theme changes.
        return Builder(
          builder: (context) =>
              children[index].parse(context) ?? const SizedBox.shrink(),
        );
      },
      itemCount: model.children?.length ?? 0,
      semanticChildCount: model.semanticChildCount,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      keyboardDismissBehavior:
          model.keyboardDismissBehavior?.parse ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
    );
  }
}
