import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';
import 'package:stac/src/parsers/widgets/stac_text_button/stac_text_button.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTextButtonParser extends StacParser<StacTextButton> {
  const StacTextButtonParser();

  @override
  StacTextButton getModel(Map<String, dynamic> json) =>
      StacTextButton.fromJson(json);

  @override
  String get type => WidgetType.textButton.name;

  @override
  Widget parse(BuildContext context, StacTextButton model) {
    return TextButton(
      onPressed: model.onPressed == null
          ? null
          : () => Stac.onCallFromJson(model.onPressed, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Stac.onCallFromJson(model.onLongPress, context),
      onHover: (bool value) => value == false ? null : model.onHover,
      onFocusChange: (bool value) =>
          value == false ? null : model.onFocusChange,
      style: model.style?.parseText(context),
      autofocus: model.autofocus,
      clipBehavior: model.clipBehavior,
      isSemanticButton: model.isSemanticButton,
      child: Stac.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
