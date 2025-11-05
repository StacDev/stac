import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';

part 'stac_navigation_bar_theme_data.g.dart';

/// A Stac model representing Flutter's [NavigationBarThemeData].
///
/// Defines the theme for navigation bars.
@JsonSerializable()
class StacNavigationBarThemeData implements StacElement {
  const StacNavigationBarThemeData({
    this.height,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.indicatorColor,
    this.indicatorShape,
    this.labelTextStyle,
    this.iconTheme,
    this.labelBehavior,
  });

  final double? height;
  final String? backgroundColor;
  final double? elevation;
  final String? shadowColor;
  final String? surfaceTintColor;
  final String? indicatorColor;
  final StacBorder? indicatorShape;
  final StacTextStyle? labelTextStyle;
  final StacIconThemeData? iconTheme;
  final NavigationDestinationLabelBehavior? labelBehavior;

  factory StacNavigationBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationBarThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacNavigationBarThemeDataToJson(this);
}

