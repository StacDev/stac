import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_snack_bar_theme_data.g.dart';

/// A Stac model representing Flutter's [SnackBarThemeData].
///
/// Defines the theme for snack bars.
@JsonSerializable()
class StacSnackBarThemeData implements StacElement {
  const StacSnackBarThemeData({
    this.behavior,
    this.backgroundColor,
    this.elevation,
    this.shape,
    this.width,
    this.contentTextStyle,
    this.actionTextColor,
    this.disabledActionTextColor,
    this.insetPadding,
    this.dismissDirection,
    this.showCloseIcon,
    this.closeIconColor,
    this.actionOverflowThreshold,
    this.actionBackgroundColor,
    this.disabledActionBackgroundColor,
  });

  final SnackBarBehavior? behavior;
  final String? backgroundColor;
  final double? elevation;
  final StacShapeBorder? shape;
  final double? width;
  final StacTextStyle? contentTextStyle;
  final String? actionTextColor;
  final String? disabledActionTextColor;
  final StacEdgeInsets? insetPadding;
  final DismissDirection? dismissDirection;
  final bool? showCloseIcon;
  final String? closeIconColor;
  final double? actionOverflowThreshold;
  final String? actionBackgroundColor;
  final String? disabledActionBackgroundColor;

  factory StacSnackBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSnackBarThemeDataToJson(this);
}

