import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/parsers/mirai_box_constraints/mirai_box_constraints.dart';
import 'package:mirai/src/parsers/mirai_icon_theme_data/mirai_icon_theme_data.dart';
import 'package:mirai/src/parsers/mirai_rounded_rectangle_border/mirai_rounded_rectangle_border.dart';

export 'mirai_chip_parser.dart';

part 'mirai_chip.freezed.dart';
part 'mirai_chip.g.dart';

@freezed
class MiraiChip with _$MiraiChip {
  const factory MiraiChip({
    Map<String, dynamic>? avatar,
    required Map<String, dynamic> label,
    MiraiTextStyle? labelStyle,
    MiraiEdgeInsets? labelPadding,
    Map<String, dynamic>? deleteIcon,
    Map<String, dynamic>? onDeleted,
    String? deleteIconColor,
    String? deleteButtonTooltipMessage,
    MiraiBorderSide? side,
    MiraiRoundedRectangleBorder? shape,
    @Default(Clip.none) Clip clipBehavior,
    @Default(false) bool autofocus,
    String? color,
    String? backgroundColor,
    MiraiEdgeInsets? padding,
    MiraiVisualDensity? visualDensity,
    MaterialTapTargetSize? materialTapTargetSize,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    MiraiIconThemeData? iconTheme,
    MiraiBoxConstraints? avatarBoxConstraints,
    MiraiBoxConstraints? deleteIconBoxConstraints,
  }) = _MiraiChip;

  factory MiraiChip.fromJson(Map<String, dynamic> json) =>
      _$MiraiChipFromJson(json);
}
