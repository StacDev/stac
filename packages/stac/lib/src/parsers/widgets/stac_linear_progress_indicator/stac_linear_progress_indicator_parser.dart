import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacLinearProgressIndicatorParser
    extends StacParser<StacLinearProgressIndicator> {
  const StacLinearProgressIndicatorParser();

  @override
  String get type => WidgetType.linearProgressIndicator.name;

  @override
  StacLinearProgressIndicator getModel(Map<String, dynamic> json) =>
      StacLinearProgressIndicator.fromJson(json);

  @override
  Widget parse(BuildContext context, StacLinearProgressIndicator model) {
    return LinearProgressIndicator(
      value: model.value?.parse,
      backgroundColor: model.backgroundColor.toColor(context),
      color: model.color.toColor(context),
      minHeight: model.minHeight?.parse,
      semanticsLabel: model.semanticsLabel,
      semanticsValue: model.semanticsValue,
      borderRadius: model.borderRadius.parse,
    );
  }
}
