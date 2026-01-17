import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSliverSafeAreaParser extends StacParser<StacSliverSafeArea> {
  const StacSliverSafeAreaParser();

  @override
  String get type => WidgetType.sliverSafeArea.name;

  @override
  StacSliverSafeArea getModel(Map<String, dynamic> json) =>
      StacSliverSafeArea.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSliverSafeArea model) {
    final sliver =
        model.sliver.parse(context) ??
        const SliverToBoxAdapter(child: SizedBox.shrink());
    return SliverSafeArea(
      left: model.left ?? true,
      top: model.top ?? true,
      right: model.right ?? true,
      bottom: model.bottom ?? true,
      minimum: model.minimum?.parse ?? EdgeInsets.zero,
      sliver: sliver,
    );
  }
}
