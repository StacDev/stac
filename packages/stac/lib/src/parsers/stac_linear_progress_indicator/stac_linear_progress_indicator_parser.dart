import 'package:flutter/material.dart';
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
      value: model.value,
      backgroundColor: model.backgroundColor.toColor(context),
      color: model.color.toColor(context),
      minHeight: model.minHeight,
      semanticsLabel: model.semanticsLabel,
      semanticsValue: model.semanticsValue,
      borderRadius: model.borderRadius.parse,
    );
  }
}
