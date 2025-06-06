import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

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
      value: model.value?.parse,
      backgroundColor: model.backgroundColor.toColor(context),
      color: model.color.toColor(context),
      strokeWidth: model.strokeWidth.parse,
      strokeAlign: model.strokeAlign.parse,
      semanticsLabel: model.semanticsLabel,
      semanticsValue: model.semanticsValue,
      strokeCap: model.strokeCap,
    );
  }
}
