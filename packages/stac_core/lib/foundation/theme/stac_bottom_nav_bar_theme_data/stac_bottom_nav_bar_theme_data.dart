import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';

part 'stac_bottom_nav_bar_theme_data.g.dart';

/// A Stac model representing Flutter's [BottomNavigationBarThemeData].
///
/// Defines the theme for bottom navigation bars.
@JsonSerializable()
class StacBottomNavBarThemeData implements StacElement {
  const StacBottomNavBarThemeData({
    this.backgroundColor,
    this.elevation,
    this.selectedIconTheme,
    this.unselectedIconTheme,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.selectedLabelStyle,
    this.unselectedLabelStyle,
    this.showSelectedLabels,
    this.showUnselectedLabels,
    this.type,
    this.enableFeedback,
    this.landscapeLayout,
  });

  final String? backgroundColor;
  final double? elevation;
  final StacIconThemeData? selectedIconTheme;
  final StacIconThemeData? unselectedIconTheme;
  final String? selectedItemColor;
  final String? unselectedItemColor;
  final StacTextStyle? selectedLabelStyle;
  final StacTextStyle? unselectedLabelStyle;
  final bool? showSelectedLabels;
  final bool? showUnselectedLabels;
  final BottomNavigationBarType? type;
  final bool? enableFeedback;
  final BottomNavigationBarLandscapeLayout? landscapeLayout;

  factory StacBottomNavBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavBarThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacBottomNavBarThemeDataToJson(this);
}

