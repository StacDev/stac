import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSpacerParser extends StacParser<StacSpacer> {
  const StacSpacerParser();

  @override
  StacSpacer getModel(Map<String, dynamic> json) => StacSpacer.fromJson(json);

  @override
  String get type => WidgetType.spacer.name;

  @override
  Widget parse(BuildContext context, StacSpacer model) {
    return Spacer(flex: model.flex ?? 1);
  }
}
