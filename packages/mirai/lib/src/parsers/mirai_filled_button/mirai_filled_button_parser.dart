import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/widget_type.dart';

class MiraiFilledButtonParser extends MiraiParser<MiraiFilledButton> {
  const MiraiFilledButtonParser();

  @override
  String get type => WidgetType.filledButton.name;

  @override
  MiraiFilledButton getModel(Map<String, dynamic> json) =>
      MiraiFilledButton.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiFilledButton model) {
    return FilledButton(
      onPressed: model.onPressed == null
          ? null
          : () => Mirai.onCallFromJson(model.onPressed, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Mirai.onCallFromJson(model.onLongPress, context),
      onHover: (bool value) => value == false ? null : model.onHover,
      onFocusChange: (bool value) =>
          value == false ? null : model.onFocusChange,
      style: model.style?.parseFilledButton(context),
      autofocus: model.autofocus,
      clipBehavior: model.clipBehavior,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
