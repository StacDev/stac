import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_navigation_bar_item/stac_bottom_navigation_bar_item.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';

export 'package:stac/src/parsers/stac_bottom_navigation_bar/stac_bottom_navigation_bar_parser.dart';

part 'stac_bottom_navigation_bar.freezed.dart';
part 'stac_bottom_navigation_bar.g.dart';

@freezed
abstract class StacBottomNavigationBar with _$StacBottomNavigationBar {
  const factory StacBottomNavigationBar({
    required List<StacBottomNavigationBarItem> items,
    double? elevation,
    BottomNavigationBarType? bottomNavigationBarType,
    String? fixedColor,
    String? backgroundColor,
    @Default(24) double iconSize,
    String? selectedItemColor,
    String? unselectedItemColor,
    @Default(14.0) double selectedFontSize,
    @Default(12.0) double unselectedFontSize,
    StacTextStyle? selectedLabelStyle,
    StacTextStyle? unselectedLabelStyle,
    bool? showSelectedLabels,
    bool? showUnselectedLabels,
    bool? enableFeedback,
    BottomNavigationBarLandscapeLayout? landscapeLayout,
  }) = _StacBottomNavigationBar;

  factory StacBottomNavigationBar.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavigationBarFromJson(json);
}
