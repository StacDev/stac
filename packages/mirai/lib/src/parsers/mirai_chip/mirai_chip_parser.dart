import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
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
    FocusNode? focusNode = FocusNode();
    return Chip(
      avatar: Mirai.fromJson(model.avatar, context) ?? const SizedBox.shrink(),
      label: Mirai.fromJson(model.label, context) ?? const SizedBox.shrink(),
      labelStyle: model.labelStyle?.parse(context),
      labelPadding: model.labelPadding.parse,
      deleteIcon:
          Mirai.fromJson(model.deleteIcon, context) ?? const SizedBox.shrink(),
      deleteIconColor: model.deleteIconColor.toColor(context),
      deleteButtonTooltipMessage: model.deleteButtonTooltipMessage,
      side: model.side.parse(context),
      backgroundColor: model.backgroundColor.toColor(context),
      elevation: model.elevation,
      shadowColor: model.shadowColor.toColor(context),
      surfaceTintColor: model.surfaceTintColor.toColor(context),
      iconTheme: model.iconTheme?.parse(context),
      padding: model.padding.parse,
      shape: model.shape.parse(context),
      autofocus: model.autofocus,
      color: WidgetStateProperty.all(model.color.toColor(context)),
      focusNode: focusNode,
      onDeleted: () {},
      clipBehavior: Clip.none,
      materialTapTargetSize: model.materialTapTargetSize,
    );
  }
}
