import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/widgets/stac_border_side/stac_border_side.dart';
import 'package:stac/src/parsers/widgets/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_rounded_rectangle_border/stac_rounded_rectangle_border.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/parsers/widgets/stac_visual_density/stac_visual_density.dart';

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
    StacDouble? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    StacIconThemeData? iconTheme,
    StacBoxConstraints? avatarBoxConstraints,
    StacBoxConstraints? deleteIconBoxConstraints,
  }) = _StacChip;

  factory StacChip.fromJson(Map<String, dynamic> json) =>
      _$StacChipFromJson(json);
}
