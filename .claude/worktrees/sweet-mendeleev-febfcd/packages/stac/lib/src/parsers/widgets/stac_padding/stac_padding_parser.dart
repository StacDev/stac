import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacPaddingParser extends StacParser<StacPadding> {
  const StacPaddingParser();

  @override
  StacPadding getModel(Map<String, dynamic> json) => StacPadding.fromJson(json);

  @override
  String get type => WidgetType.padding.name;

  @override
  Widget parse(BuildContext context, StacPadding model) {
    return Padding(
      padding: model.padding?.parse ?? EdgeInsets.zero,
      child: model.child?.parse(context),
    );
  }
}
