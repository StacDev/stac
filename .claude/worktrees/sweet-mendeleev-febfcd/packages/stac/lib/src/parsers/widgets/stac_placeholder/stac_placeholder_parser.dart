import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacPlaceholderParser extends StacParser<StacPlaceholder> {
  const StacPlaceholderParser();

  @override
  String get type => WidgetType.placeholder.name;

  @override
  StacPlaceholder getModel(Map<String, dynamic> json) =>
      StacPlaceholder.fromJson(json);

  @override
  Widget parse(BuildContext context, StacPlaceholder model) {
    return Placeholder(
      fallbackWidth: model.fallbackWidth ?? 2.0,
      fallbackHeight: model.fallbackHeight ?? 400.0,
      strokeWidth: model.strokeWidth ?? 400.0,
      color: (model.color?.toColor(context)) ?? const Color(0xFF455A64),
      child: model.child?.parse(context),
    );
  }
}
