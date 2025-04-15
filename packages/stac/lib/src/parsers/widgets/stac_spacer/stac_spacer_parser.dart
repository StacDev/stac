import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_spacer/stac_spacer.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSpacerParser extends StacParser<StacSpacer> {
  const StacSpacerParser();

  @override
  StacSpacer getModel(Map<String, dynamic> json) => StacSpacer.fromJson(json);

  @override
  String get type => WidgetType.spacer.name;

  @override
  Widget parse(BuildContext context, StacSpacer model) {
    return Spacer(flex: model.flex);
  }
}
