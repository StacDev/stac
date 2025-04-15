import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_outlined_button.dart';

class StacOutlinedButtonParser extends StacParser<StacOutlinedButton> {
  const StacOutlinedButtonParser();

  @override
  StacOutlinedButton getModel(Map<String, dynamic> json) =>
      StacOutlinedButton.fromJson(json);

  @override
  String get type => WidgetType.outlinedButton.name;

  @override
  Widget parse(BuildContext context, StacOutlinedButton model) {
    return OutlinedButton(
      onPressed: model.onPressed == null
          ? null
          : () => Stac.onCallFromJson(model.onPressed, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Stac.onCallFromJson(model.onLongPress, context),
      onHover: (bool value) => value == false ? null : model.onHover,
      onFocusChange: (bool value) =>
          value == false ? null : model.onFocusChange,
      style: model.style?.parseOutlined(context),
      autofocus: model.autofocus,
      clipBehavior: model.clipBehavior,
      child: Stac.fromJson(model.child, context),
    );
  }
}
