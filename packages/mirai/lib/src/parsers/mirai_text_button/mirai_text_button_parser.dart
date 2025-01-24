import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/parsers.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiTextButtonParser extends MiraiParser<MiraiTextButton> {
  const MiraiTextButtonParser();

  @override
  MiraiTextButton getModel(Map<String, dynamic> json) =>
      MiraiTextButton.fromJson(json);

  @override
  String get type => WidgetType.textButton.name;

  @override
  Widget parse(BuildContext context, MiraiTextButton model) {
    return TextButton(
      onPressed: model.onPressed == null
          ? null
          : () => Mirai.onCallFromJson(model.onPressed, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Mirai.onCallFromJson(model.onLongPress, context),
      onHover: (bool value) => value == false ? null : model.onHover,
      onFocusChange: (bool value) =>
          value == false ? null : model.onFocusChange,
      style: model.style?.parseText(context),
      autofocus: model.autofocus,
      clipBehavior: model.clipBehavior,
      iconAlignment: model.iconAlignment,
      isSemanticButton: model.isSemanticButton,
      child: Mirai.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
