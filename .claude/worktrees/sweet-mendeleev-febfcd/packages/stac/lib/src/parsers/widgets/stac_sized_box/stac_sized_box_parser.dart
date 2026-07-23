import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSizedBoxParser extends StacParser<StacSizedBox> {
  const StacSizedBoxParser();

  @override
  StacSizedBox getModel(Map<String, dynamic> json) =>
      StacSizedBox.fromJson(json);

  @override
  String get type => WidgetType.sizedBox.name;

  @override
  Widget parse(BuildContext context, StacSizedBox model) {
    return SizedBox(
      width: model.width,
      height: model.height,
      child: model.child.parse(context),
    );
  }
}
