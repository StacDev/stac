import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';

part 'stac_chip_theme_data.g.dart';

/// A Stac model representing Flutter's [ChipThemeData].
///
/// Defines the theme for chips.
@JsonSerializable()
class StacChipThemeData implements StacElement {
  const StacChipThemeData({
    this.color,
    this.backgroundColor,
    this.deleteIconColor,
    this.disabledColor,
    this.selectedColor,
    this.secondarySelectedColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.selectedShadowColor,
    this.showCheckmark,
    this.checkmarkColor,
    this.labelPadding,
    this.padding,
    this.side,
    this.shape,
    this.labelStyle,
    this.secondaryLabelStyle,
    this.brightness,
    this.elevation,
    this.pressElevation,
    this.iconTheme,
    this.avatarBoxConstraints,
    this.deleteIconBoxConstraints,
  });

  final String? color;
  final String? backgroundColor;
  final String? deleteIconColor;
  final String? disabledColor;
  final String? selectedColor;
  final String? secondarySelectedColor;
  final String? shadowColor;
  final String? surfaceTintColor;
  final String? selectedShadowColor;
  final bool? showCheckmark;
  final String? checkmarkColor;
  final StacEdgeInsets? labelPadding;
  final StacEdgeInsets? padding;
  final StacBorderSide? side;
  final StacShapeBorder? shape;
  final StacTextStyle? labelStyle;
  final StacTextStyle? secondaryLabelStyle;
  final Brightness? brightness;
  final double? elevation;
  final double? pressElevation;
  final StacIconThemeData? iconTheme;
  final StacBoxConstraints? avatarBoxConstraints;
  final StacBoxConstraints? deleteIconBoxConstraints;

  factory StacChipThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacChipThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacChipThemeDataToJson(this);
}

