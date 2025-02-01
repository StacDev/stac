import 'package:flutter/material.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacFilledButtonParser extends StacParser<StacFilledButton> {
  const StacFilledButtonParser();

  @override
  String get type => WidgetType.filledButton.name;

  @override
  StacFilledButton getModel(Map<String, dynamic> json) =>
      StacFilledButton.fromJson(json);

  @override
  Widget parse(BuildContext context, StacFilledButton model) {
    return FilledButton(
      onPressed: model.onPressed == null
          ? null
          : () => Stac.onCallFromJson(model.onPressed, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Stac.onCallFromJson(model.onLongPress, context),
      onHover: (bool value) => value == false ? null : model.onHover,
      onFocusChange: (bool value) =>
          value == false ? null : model.onFocusChange,
      style: model.style?.parseFilledButton(context),
      autofocus: model.autofocus,
      clipBehavior: model.clipBehavior,
      iconAlignment: model.iconAlignment,
      child: Stac.fromJson(model.child, context),
    );
  }
}
