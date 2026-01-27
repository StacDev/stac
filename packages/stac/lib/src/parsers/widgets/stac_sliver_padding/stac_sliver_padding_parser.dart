import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';

import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSliverPaddingParser extends StacParser<StacSliverPadding> {
  const StacSliverPaddingParser();

  @override
  String get type => WidgetType.sliverPadding.name;

  @override
  StacSliverPadding getModel(Map<String, dynamic> json) =>
      StacSliverPadding.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSliverPadding model) {
    return SliverPadding(
      padding: model.padding.parse,
      sliver: model.sliver.parse(context),
    );
  }
}
