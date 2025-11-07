import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/navigation/stac_bottom_navigation_bar_item/stac_bottom_navigation_bar_item.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';

part 'stac_bottom_nav_bar_theme_data.g.dart';

/// A Stac model representing Flutter's [BottomNavigationBarThemeData].
///
/// Defines the theme for bottom navigation bars, including colors, icon themes,
/// text styles, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacBottomNavBarThemeData(
///   backgroundColor: '#FFFFFF',
///   selectedItemColor: '#2196F3',
///   unselectedItemColor: '#757575',
///   type: BottomNavigationBarType.fixed,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#FFFFFF",
///   "elevation": 8.0,
///   "selectedItemColor": "#2196F3",
///   "unselectedItemColor": "#757575",
///   "type": "fixed",
///   "showSelectedLabels": true,
///   "showUnselectedLabels": true
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacBottomNavBarThemeData implements StacElement {
  /// Creates a [StacBottomNavBarThemeData] with the given properties.
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

  /// The background color of the bottom navigation bar.
  final String? backgroundColor;

  /// The z-coordinate at which to place this bottom navigation bar relative to its parent.
  final double? elevation;

  /// The icon theme for selected items.
  final StacIconThemeData? selectedIconTheme;

  /// The icon theme for unselected items.
  final StacIconThemeData? unselectedIconTheme;

  /// The color of the selected item.
  final String? selectedItemColor;

  /// The color of the unselected items.
  final String? unselectedItemColor;

  /// The text style for selected labels.
  final StacTextStyle? selectedLabelStyle;

  /// The text style for unselected labels.
  final StacTextStyle? unselectedLabelStyle;

  /// Whether to show labels for selected items.
  final bool? showSelectedLabels;

  /// Whether to show labels for unselected items.
  final bool? showUnselectedLabels;

  /// The type of bottom navigation bar.
  final StacBottomNavigationBarType? type;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// The layout behavior in landscape orientation.
  final StacBottomNavigationBarLandscapeLayout? landscapeLayout;

  /// Creates a [StacBottomNavBarThemeData] from JSON.
  factory StacBottomNavBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavBarThemeDataFromJson(json);

  /// Converts this bottom navigation bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacBottomNavBarThemeDataToJson(this);
}
