import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_fitted_box/mirai_fitted_box.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiFittedBoxParser extends MiraiParser<MiraiFittedBox> {
  const MiraiFittedBoxParser();

  @override
  String get type => WidgetType.fittedBox.name;

  @override
  MiraiFittedBox getModel(Map<String, dynamic> json) =>
      MiraiFittedBox.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiFittedBox model) {
    return FittedBox(
      fit: model.fit,
      alignment: model.alignment.value,
      clipBehavior: model.clipBehavior,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
