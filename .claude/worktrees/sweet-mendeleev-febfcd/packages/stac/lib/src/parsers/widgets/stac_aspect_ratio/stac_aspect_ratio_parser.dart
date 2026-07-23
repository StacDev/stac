import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacAspectRatioParser extends StacParser<StacAspectRatio> {
  const StacAspectRatioParser();

  @override
  String get type => WidgetType.aspectRatio.name;

  @override
  StacAspectRatio getModel(Map<String, dynamic> json) =>
      StacAspectRatio.fromJson(json);

  @override
  Widget parse(BuildContext context, StacAspectRatio model) {
    return AspectRatio(
      aspectRatio: model.aspectRatio,
      child: model.child.parse(context),
    );
  }
}
