import 'package:flutter/material.dart';
import 'package:stac/src/parsers/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/stac_rounded_rectangle_border/stac_rounded_rectangle_border.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacChipParser extends StacParser<StacChip> {
  const StacChipParser();

  @override
  String get type => WidgetType.chip.name;

  @override
  StacChip getModel(Map<String, dynamic> json) => StacChip.fromJson(json);

  @override
  Widget parse(BuildContext context, StacChip model) {
    return Chip(
      avatar: Stac.fromJson(model.avatar, context),
      label: Stac.fromJson(model.label, context) ?? const SizedBox.shrink(),
      labelStyle: model.labelStyle?.parse(context),
      labelPadding: model.labelPadding.parse,
      deleteIcon: Stac.fromJson(model.deleteIcon, context),
      onDeleted: () => Stac.onCallFromJson(model.onDeleted, context),
      deleteIconColor: model.deleteIconColor.toColor(context),
      deleteButtonTooltipMessage: model.deleteButtonTooltipMessage,
      side: model.side.parse(context),
      shape: model.shape.parse(context),
      clipBehavior: model.clipBehavior,
      autofocus: model.autofocus,
      color: WidgetStateProperty.all(model.color.toColor(context)),
      backgroundColor: model.backgroundColor.toColor(context),
      padding: model.padding.parse,
      visualDensity: model.visualDensity?.parse,
      materialTapTargetSize: model.materialTapTargetSize,
      elevation: model.elevation,
      shadowColor: model.shadowColor.toColor(context),
      surfaceTintColor: model.surfaceTintColor.toColor(context),
      iconTheme: model.iconTheme?.parse(context),
      avatarBoxConstraints: model.avatarBoxConstraints?.parse,
      deleteIconBoxConstraints: model.deleteIconBoxConstraints?.parse,
    );
  }
}
