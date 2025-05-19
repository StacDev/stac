import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';
import 'package:stac/src/parsers/widgets/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_icon_button.dart';

class StacIconButtonParser extends StacParser<StacIconButton> {
  const StacIconButtonParser();

  @override
  String get type => WidgetType.iconButton.name;

  @override
  StacIconButton getModel(Map<String, dynamic> json) =>
      StacIconButton.fromJson(json);

  @override
  Widget parse(BuildContext context, StacIconButton model) {
    return IconButton(
      iconSize: model.iconSize?.parse,
      padding: model.padding?.parse,
      alignment: model.alignment?.value,
      splashRadius: model.splashRadius?.parse,
      color: model.color.toColor(context),
      focusColor: model.focusColor.toColor(context),
      hoverColor: model.hoverColor.toColor(context),
      highlightColor: model.highlightColor.toColor(context),
      splashColor: model.splashColor.toColor(context),
      disabledColor: model.disabledColor.toColor(context),
      onPressed: model.onPressed == null
          ? null
          : () => Stac.onCallFromJson(model.onPressed, context),
      autofocus: model.autofocus,
      tooltip: model.tooltip,
      enableFeedback: model.enableFeedback,
      constraints: model.constraints?.parse,
      style: model.style?.parseIconButton(context),
      isSelected: model.isSelected,
      selectedIcon: Stac.fromJson(model.selectedIcon, context),
      icon: Stac.fromJson(model.icon, context) ?? const SizedBox(),
    );
  }
}
