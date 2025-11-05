import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/theme/stac_color_scheme/stac_color_scheme.dart';

part 'stac_button_theme_data.g.dart';

/// A Stac model representing Flutter's [ButtonThemeData].
///
/// Defines the theme for Material buttons.
@JsonSerializable()
class StacButtonThemeData implements StacElement {
  const StacButtonThemeData({
    this.textTheme = ButtonTextTheme.normal,
    this.minWidth = 88.0,
    this.height = 36.0,
    this.padding,
    this.shape,
    this.layoutBehavior = ButtonBarLayoutBehavior.padded,
    this.alignedDropdown = false,
    this.buttonColor,
    this.disabledColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.colorScheme,
    this.materialTapTargetSize,
  });

  final ButtonTextTheme textTheme;
  final double minWidth;
  final double height;
  final StacEdgeInsets? padding;
  final StacShapeBorder? shape;
  final ButtonBarLayoutBehavior layoutBehavior;
  final bool alignedDropdown;
  final String? buttonColor;
  final String? disabledColor;
  final String? focusColor;
  final String? hoverColor;
  final String? highlightColor;
  final String? splashColor;
  final StacColorScheme? colorScheme;
  final MaterialTapTargetSize? materialTapTargetSize;

  factory StacButtonThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacButtonThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacButtonThemeDataToJson(this);
}
