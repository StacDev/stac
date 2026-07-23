import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_flex_fit_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacFlexibleParser extends StacParser<StacFlexible> {
  const StacFlexibleParser();

  @override
  String get type => WidgetType.flexible.name;

  @override
  StacFlexible getModel(Map<String, dynamic> json) =>
      StacFlexible.fromJson(json);

  @override
  Widget parse(BuildContext context, StacFlexible model) {
    return Flexible(
      fit: model.fit?.parse ?? FlexFit.loose,
      flex: model.flex ?? 1,
      child: model.child.parse(context) ?? const SizedBox.shrink(),
    );
  }
}
