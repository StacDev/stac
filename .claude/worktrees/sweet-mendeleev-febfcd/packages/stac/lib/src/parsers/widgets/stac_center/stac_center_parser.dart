import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacCenterParser extends StacParser<StacCenter> {
  const StacCenterParser();

  @override
  String get type => WidgetType.center.name;

  @override
  StacCenter getModel(Map<String, dynamic> json) => StacCenter.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCenter model) {
    return Center(
      widthFactor: model.widthFactor,
      heightFactor: model.heightFactor,
      child: model.child?.parse(context),
    );
  }
}
