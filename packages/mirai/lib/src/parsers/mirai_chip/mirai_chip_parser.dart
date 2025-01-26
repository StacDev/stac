import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/parsers/mirai_box_constraints/mirai_box_constraints.dart';
import 'package:mirai/src/parsers/mirai_icon_theme_data/mirai_icon_theme_data.dart';
import 'package:mirai/src/parsers/mirai_rounded_rectangle_border/mirai_rounded_rectangle_border.dart';
import 'package:mirai/src/utils/widget_type.dart';

class MiraiChipParser extends MiraiParser<MiraiChip> {
  const MiraiChipParser();

  @override
  String get type => WidgetType.chip.name;

  @override
  MiraiChip getModel(Map<String, dynamic> json) => MiraiChip.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiChip model) {
    return Chip(
      avatar: Mirai.fromJson(model.avatar, context),
      label: Mirai.fromJson(model.label, context) ?? const SizedBox.shrink(),
      labelStyle: model.labelStyle?.parse(context),
      labelPadding: model.labelPadding.parse,
      deleteIcon: Mirai.fromJson(model.deleteIcon, context),
      onDeleted: () => Mirai.onCallFromJson(model.onDeleted, context),
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
