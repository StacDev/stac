import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/core/stac_children.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

/// Builds a `forEach` that is not in a list of widgets: its items are shown
/// in a column. In a list of widgets, the items take the `forEach`'s place
/// instead (see [StacChildren]).
class StacForEachParser extends StacParser<StacForEach> {
  const StacForEachParser();

  @override
  String get type => WidgetType.forEach.name;

  @override
  StacForEach getModel(Map<String, dynamic> json) => StacForEach.fromJson(json);

  @override
  Widget parse(BuildContext context, StacForEach model) {
    final children = StacChildren(
      context,
      items: model.items,
      itemTemplate: model.itemTemplate,
      keyPath: model.keyPath,
    );
    final empty = children.emptyReplacement(context, model.emptyWidget);
    if (empty != null) return empty;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: children.buildAll(context),
    );
  }
}
