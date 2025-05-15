import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_list_view/stac_list_view.dart';
import 'package:stac/src/utils/widget_type.dart';
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
      scrollDirection: model.scrollDirection,
      reverse: model.reverse,
      controller: controller,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap,
      padding: model.padding?.parse,
      addAutomaticKeepAlives: model.addAutomaticKeepAlives,
      addRepaintBoundaries: model.addRepaintBoundaries,
      addSemanticIndexes: model.addSemanticIndexes,
      cacheExtent: model.cacheExtent,
      dragStartBehavior: model.dragStartBehavior,
      keyboardDismissBehavior: model.keyboardDismissBehavior,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior,
      itemCount: model.children.length,
      itemBuilder: (context, index) =>
          Stac.fromJson(model.children[index], context),
      separatorBuilder: (context, _) =>
          Stac.fromJson(model.separator, context) ?? const SizedBox(),
    );
  }
}
