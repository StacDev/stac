import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/theme/themes.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

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
          : () => model.onPressed?.parse(context),
      onLongPress: model.onLongPress == null
          ? null
          : () => model.onLongPress?.parse(context),
      onHover: model.onHover == null
          ? null
          : (bool value) => model.onHover?.parse(context),
      onFocusChange: model.onFocusChange == null
          ? null
          : (bool value) => model.onFocusChange?.parse(context),
      style: model.style?.parseFilledButton(context),
      autofocus: model.autofocus ?? false,
      clipBehavior: model.clipBehavior?.parse,
      child: model.child?.parse(context),
    );
  }
}
