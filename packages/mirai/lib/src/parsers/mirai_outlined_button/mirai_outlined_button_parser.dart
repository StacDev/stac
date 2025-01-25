import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/parsers.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiOutlinedButtonParser extends MiraiParser<MiraiOutlinedButton> {
  const MiraiOutlinedButtonParser();

  @override
  MiraiOutlinedButton getModel(Map<String, dynamic> json) =>
      MiraiOutlinedButton.fromJson(json);

  @override
  String get type => WidgetType.outlinedButton.name;

  @override
  Widget parse(BuildContext context, MiraiOutlinedButton model) {
    return OutlinedButton(
      onPressed: model.onPressed == null
          ? null
          : () => Mirai.onCallFromJson(model.onPressed, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Mirai.onCallFromJson(model.onLongPress, context),
      onHover: (bool value) => value == false ? null : model.onHover,
      onFocusChange: (bool value) =>
          value == false ? null : model.onFocusChange,
      style: model.style?.parseOutlined(context),
      autofocus: model.autofocus,
      clipBehavior: model.clipBehavior,
      iconAlignment: model.iconAlignment,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
