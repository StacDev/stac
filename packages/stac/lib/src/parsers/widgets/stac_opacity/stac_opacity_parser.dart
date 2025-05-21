import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_opacity/stac_opacity.dart';
import 'package:stac/src/utils/widget_type.dart';
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
      opacity: model.opacity.parse,
      child: Stac.fromJson(model.child, context),
    );
  }
}
