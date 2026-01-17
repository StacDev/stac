import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSliverOpacityParser extends StacParser<StacSliverOpacity> {
  const StacSliverOpacityParser();

  @override
  String get type => WidgetType.sliverOpacity.name;

  @override
  StacSliverOpacity getModel(Map<String, dynamic> json) =>
      StacSliverOpacity.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSliverOpacity model) {
    return SliverOpacity(
      opacity: model.opacity,
      alwaysIncludeSemantics: model.alwaysIncludeSemantics ?? false,
      sliver: model.sliver?.parse(context),
    );
  }
}
