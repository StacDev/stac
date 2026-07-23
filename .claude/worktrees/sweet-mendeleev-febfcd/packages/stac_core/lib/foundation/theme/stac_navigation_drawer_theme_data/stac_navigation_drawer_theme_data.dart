import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_size/stac_size.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';

part 'stac_navigation_drawer_theme_data.g.dart';

/// A Stac model representing Flutter's [NavigationDrawerThemeData].
///
/// Defines the theme for navigation drawers, including colors, elevation,
/// indicator, icon themes, and text styles.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacNavigationDrawerThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 16.0,
///   indicatorColor: '#E3F2FD',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#FFFFFF",
///   "elevation": 16.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "indicatorColor": "#E3F2FD",
///   "tileHeight": 48.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacNavigationDrawerThemeData implements StacElement {
  /// Creates a [StacNavigationDrawerThemeData] with the given properties.
  const StacNavigationDrawerThemeData({
    this.tileHeight,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.indicatorColor,
    this.indicatorShape,
    this.indicatorSize,
    this.labelTextStyle,
    this.iconTheme,
  });

  /// The height of each navigation drawer tile.
  final double? tileHeight;

  /// The background color of the navigation drawer.
  final String? backgroundColor;

  /// The z-coordinate at which to place this navigation drawer relative to its parent.
  final double? elevation;

  /// The color of the shadow below the navigation drawer.
  final String? shadowColor;

  /// The color used to tint the surface of this navigation drawer.
  final String? surfaceTintColor;

  /// The color of the indicator for the selected destination.
  final String? indicatorColor;

  /// The shape of the indicator.
  final StacShapeBorder? indicatorShape;

  /// The size of the indicator.
  final StacSize? indicatorSize;

  /// The text style for navigation drawer labels.
  final StacTextStyle? labelTextStyle;

  /// The icon theme for navigation drawer icons.
  final StacIconThemeData? iconTheme;

  /// Creates a [StacNavigationDrawerThemeData] from JSON.
  factory StacNavigationDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationDrawerThemeDataFromJson(json);

  /// Converts this navigation drawer theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacNavigationDrawerThemeDataToJson(this);
}
