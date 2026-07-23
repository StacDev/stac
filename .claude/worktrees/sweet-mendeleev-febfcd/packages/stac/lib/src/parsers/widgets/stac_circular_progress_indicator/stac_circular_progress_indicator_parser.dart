import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/text/stac_stroke_cap_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacCircularProgressIndicatorParser
    extends StacParser<StacCircularProgressIndicator> {
  const StacCircularProgressIndicatorParser();

  @override
  String get type => WidgetType.circularProgressIndicator.name;

  @override
  StacCircularProgressIndicator getModel(Map<String, dynamic> json) =>
      StacCircularProgressIndicator.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCircularProgressIndicator model) {
    return CircularProgressIndicator(
      value: model.value,
      backgroundColor: model.backgroundColor?.toColor(context),
      color: model.color?.toColor(context),
      strokeWidth: model.strokeWidth ?? 4.0,
      strokeAlign: model.strokeAlign ?? 0.0,
      semanticsLabel: model.semanticsLabel,
      semanticsValue: model.semanticsValue,
      strokeCap: model.strokeCap?.parse,
    );
  }
}
