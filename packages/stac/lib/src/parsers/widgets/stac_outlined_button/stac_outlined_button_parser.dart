import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/theme/themes.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

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
          : () => Stac.onCallFromJson(model.onPressed?.toJson(), context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Stac.onCallFromJson(model.onLongPress?.toJson(), context),
      onHover: model.onHover == null
          ? null
          : (bool value) =>
                Stac.onCallFromJson(model.onHover?.toJson(), context),
      onFocusChange: model.onFocusChange == null
          ? null
          : (bool value) =>
                Stac.onCallFromJson(model.onFocusChange?.toJson(), context),
      style: model.style?.parseOutlinedButton(context),
      autofocus: model.autofocus ?? false,
      clipBehavior: model.clipBehavior?.parse,
      child: model.child?.parse(context),
    );
  }
}
