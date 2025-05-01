import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_elevated_button.dart';

class StacElevatedButtonParser extends StacParser<StacElevatedButton> {
  const StacElevatedButtonParser();

  @override
  String get type => WidgetType.elevatedButton.name;

  @override
  StacElevatedButton getModel(Map<String, dynamic> json) =>
      StacElevatedButton.fromJson(json);

  @override
  Widget parse(BuildContext context, StacElevatedButton model) {
    return ElevatedButton(
      onPressed: model.onPressed == null
          ? null
          : () => Stac.onCallFromJson(model.onPressed, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Stac.onCallFromJson(model.onLongPress, context),
      onHover: (bool value) => value == false ? null : model.onHover,
      onFocusChange: (bool value) =>
          value == false ? null : model.onFocusChange,
      style: model.style?.parseElevatedButton(context),
      autofocus: model.autofocus,
      clipBehavior: model.clipBehavior,
      child: Stac.fromJson(model.child, context),
    );
  }
}
