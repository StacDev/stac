import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/core/stac_children.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSliverGridParser extends StacParser<StacSliverGrid> {
  const StacSliverGridParser();

  @override
  String get type => WidgetType.sliverGrid.name;

  @override
  StacSliverGrid getModel(Map<String, dynamic> json) =>
      StacSliverGrid.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSliverGrid model) {
    final children = StacChildren(
      context,
      children: model.children,
      items: model.items,
      itemTemplate: model.itemTemplate,
      keyPath: model.keyPath,
    );
    final empty = children.emptyReplacement(context, model.emptyWidget);
    if (empty != null) return empty;

    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        children.build,
        childCount: children.length,
        findChildIndexCallback: children.hasKeys ? children.indexOfKey : null,
        addAutomaticKeepAlives: model.addAutomaticKeepAlives ?? true,
        addRepaintBoundaries: model.addRepaintBoundaries ?? true,
        addSemanticIndexes: model.addSemanticIndexes ?? true,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: model.crossAxisCount ?? 1,
        mainAxisSpacing: model.mainAxisSpacing ?? 0.0,
        crossAxisSpacing: model.crossAxisSpacing ?? 0.0,
        childAspectRatio: model.childAspectRatio ?? 1.0,
        mainAxisExtent: model.mainAxisExtent,
      ),
    );
  }
}
