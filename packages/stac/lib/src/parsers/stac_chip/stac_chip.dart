import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/stac_rounded_rectangle_border/stac_rounded_rectangle_border.dart';
import 'package:stac/stac.dart';

export 'stac_chip_parser.dart';

part 'stac_chip.freezed.dart';
part 'stac_chip.g.dart';

@freezed
abstract class StacChip with _$StacChip {
  const factory StacChip({
    Map<String, dynamic>? avatar,
    required Map<String, dynamic> label,
    StacTextStyle? labelStyle,
    StacEdgeInsets? labelPadding,
    Map<String, dynamic>? deleteIcon,
    Map<String, dynamic>? onDeleted,
    String? deleteIconColor,
    String? deleteButtonTooltipMessage,
    StacBorderSide? side,
    StacRoundedRectangleBorder? shape,
    @Default(Clip.none) Clip clipBehavior,
    @Default(false) bool autofocus,
    String? color,
    String? backgroundColor,
    StacEdgeInsets? padding,
    StacVisualDensity? visualDensity,
    MaterialTapTargetSize? materialTapTargetSize,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    StacIconThemeData? iconTheme,
    StacBoxConstraints? avatarBoxConstraints,
    StacBoxConstraints? deleteIconBoxConstraints,
  }) = _StacChip;

  factory StacChip.fromJson(Map<String, dynamic> json) =>
      _$StacChipFromJson(json);
}
