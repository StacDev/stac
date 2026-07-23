import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';

import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSliverVisibilityParser extends StacParser<StacSliverVisibility> {
  const StacSliverVisibilityParser();

  @override
  String get type => WidgetType.sliverVisibility.name;

  @override
  StacSliverVisibility getModel(Map<String, dynamic> json) =>
      StacSliverVisibility.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSliverVisibility model) {
    return SliverVisibility(
      visible: model.visible ?? true,
      maintainState: model.maintainState ?? false,
      maintainAnimation: model.maintainAnimation ?? false,
      maintainSize: model.maintainSize ?? false,
      maintainSemantics: model.maintainSemantics ?? false,
      maintainInteractivity: model.maintainInteractivity ?? false,
      sliver: model.sliver.parse(context) ?? const SliverToBoxAdapter(),
      replacementSliver:
          model.replacementSliver?.parse(context) ?? const SliverToBoxAdapter(),
    );
  }
}
