import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_grid_view/stac_grid_view.dart';
import 'package:stac/src/utils/widget_type.dart';
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
      scrollDirection: model.scrollDirection,
      reverse: model.reverse,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap,
      padding: model.padding.parse,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: model.crossAxisCount ?? 0,
        mainAxisSpacing: model.mainAxisSpacing,
        crossAxisSpacing: model.crossAxisSpacing,
        childAspectRatio: model.childAspectRatio,
      ),
      addAutomaticKeepAlives: model.addAutomaticKeepAlives,
      addRepaintBoundaries: model.addRepaintBoundaries,
      addSemanticIndexes: model.addSemanticIndexes,
      cacheExtent: model.cacheExtent,
      itemBuilder: (context, index) =>
          Stac.fromJson(model.children[index], context),
      itemCount: model.children.length,
      semanticChildCount: model.semanticChildCount,
      dragStartBehavior: model.dragStartBehavior,
      keyboardDismissBehavior: model.keyboardDismissBehavior,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior,
    );
  }
}
