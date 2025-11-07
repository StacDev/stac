import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_box_constraints_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_mouse_cursor_parser.dart';
import 'package:stac/src/parsers/theme/themes.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

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
      iconSize: model.iconSize,
      padding: model.padding?.parse,
      alignment: model.alignment?.parse,
      splashRadius: model.splashRadius,
      color: model.color?.toColor(context),
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      highlightColor: model.highlightColor?.toColor(context),
      splashColor: model.splashColor?.toColor(context),
      disabledColor: model.disabledColor?.toColor(context),
      onPressed: model.onPressed == null
          ? null
          : () => Stac.onCallFromJson(model.onPressed?.toJson(), context),
      onHover: model.onHover == null
          ? null
          : (bool value) =>
                Stac.onCallFromJson(model.onHover?.toJson(), context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Stac.onCallFromJson(model.onLongPress?.toJson(), context),
      mouseCursor: model.mouseCursor?.parse,
      autofocus: model.autofocus ?? false,
      tooltip: model.tooltip,
      enableFeedback: model.enableFeedback,
      constraints: model.constraints?.parse,
      style: model.style?.parseIconButton(context),
      isSelected: model.isSelected,
      selectedIcon: model.selectedIcon?.parse(context),
      icon: model.icon?.parse(context) ?? const SizedBox(),
    );
  }
}
