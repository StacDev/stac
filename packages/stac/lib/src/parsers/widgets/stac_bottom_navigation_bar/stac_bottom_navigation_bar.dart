import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_navigation_bar_item/stac_bottom_navigation_bar_item.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';

export 'stac_bottom_navigation_bar_parser.dart';

part 'stac_bottom_navigation_bar.freezed.dart';
part 'stac_bottom_navigation_bar.g.dart';

@freezed
abstract class StacBottomNavigationBar with _$StacBottomNavigationBar {
  const factory StacBottomNavigationBar({
    required List<StacBottomNavigationBarItem> items,
    StacDouble? elevation,
    BottomNavigationBarType? bottomNavigationBarType,
    String? fixedColor,
    String? backgroundColor,
    @Default(StacDouble(24)) StacDouble iconSize,
    String? selectedItemColor,
    String? unselectedItemColor,
    @Default(StacDouble(14.0)) StacDouble selectedFontSize,
    @Default(StacDouble(12.0)) StacDouble unselectedFontSize,
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
