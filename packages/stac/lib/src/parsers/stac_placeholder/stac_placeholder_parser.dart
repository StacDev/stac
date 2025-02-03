import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/stac_placeholder/stac_placeholder.dart';
import 'package:stac/src/utils/utils.dart';
import 'package:stac/src/utils/widget_type.dart';
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
      fallbackWidth: model.fallbackWidth,
      fallbackHeight: model.fallbackHeight,
      strokeWidth: model.strokeWidth,
      color: model.color.toColor(context) ?? Color(0xFF455A64),
      child: Stac.fromJson(model.child, context),
    );
  }
}
