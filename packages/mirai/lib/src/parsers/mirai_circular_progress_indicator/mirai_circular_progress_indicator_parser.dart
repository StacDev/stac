import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/widget_type.dart';

class MiraiCircularProgressIndicatorParser extends MiraiParser<MiraiCircularProgressIndicator> {
  const MiraiCircularProgressIndicatorParser();

  @override
  String get type => WidgetType.circularProgressIndicator.name;

  @override
  MiraiCircularProgressIndicator getModel(Map<String, dynamic> json) =>
      MiraiCircularProgressIndicator.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiCircularProgressIndicator model) {
    return CircularProgressIndicator(
      value: model.value,
      backgroundColor: model.backgroundColor.toColor(context),
      color: model.color.toColor(context),
      strokeWidth: model.strokeWidth,
      strokeAlign: model.strokeAlign,
      semanticsLabel: model.semanticsLabel,
      semanticsValue: model.semanticsValue,
      strokeCap: model.strokeCap,
    );
  }
}
