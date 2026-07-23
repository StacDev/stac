import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacOpacityParser extends StacParser<StacOpacity> {
  const StacOpacityParser();

  @override
  String get type => WidgetType.opacity.name;

  @override
  StacOpacity getModel(Map<String, dynamic> json) => StacOpacity.fromJson(json);

  @override
  Widget parse(BuildContext context, StacOpacity model) {
    return Opacity(
      opacity: model.opacity,
      alwaysIncludeSemantics: model.alwaysIncludeSemantics ?? false,
      child: model.child?.parse(context),
    );
  }
}
