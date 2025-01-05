import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/widget_type.dart';

class MiraiLinearProgressIndicatorParser
    extends MiraiParser<MiraiLinearProgressIndicator> {
  const MiraiLinearProgressIndicatorParser();

  @override
  String get type => WidgetType.linearProgressIndicator.name;

  @override
  MiraiLinearProgressIndicator getModel(Map<String, dynamic> json) =>
      MiraiLinearProgressIndicator.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiLinearProgressIndicator model) {
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
