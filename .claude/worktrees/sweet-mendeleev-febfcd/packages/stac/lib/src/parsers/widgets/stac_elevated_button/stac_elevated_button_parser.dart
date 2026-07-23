import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/theme/themes.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

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
          : () => model.onPressed?.parse(context),
      onLongPress: model.onLongPress == null
          ? null
          : () => model.onLongPress?.parse(context),
      onHover: model.onHover == null
          ? null
          : (bool value) =>
                value == false ? null : model.onHover?.parse(context),
      onFocusChange: model.onFocusChange == null
          ? null
          : (bool value) =>
                value == false ? null : model.onFocusChange?.parse(context),
      style: model.style?.parseElevatedButton(context),
      autofocus: model.autofocus ?? false,
      clipBehavior: model.clipBehavior?.parse,
      child: model.child?.parse(context),
    );
  }
}
