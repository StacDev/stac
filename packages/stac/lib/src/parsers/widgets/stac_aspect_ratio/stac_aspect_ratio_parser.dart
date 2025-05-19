import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_aspect_ratio/stac_aspect_ratio.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/widget_type.dart';
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
      aspectRatio: model.aspectRatio.parse,
      child: Stac.fromJson(model.child, context),
    );
  }
}
