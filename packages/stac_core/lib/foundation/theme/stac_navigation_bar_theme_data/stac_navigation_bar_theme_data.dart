import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/navigation/stac_navigation_destination_label_behavior.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';

part 'stac_navigation_bar_theme_data.g.dart';

/// A Stac model representing Flutter's [NavigationBarThemeData].
///
/// Defines the theme for navigation bars, including colors, elevation,
/// indicator, icon themes, and text styles.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacNavigationBarThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 8.0,
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
///   "elevation": 8.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "indicatorColor": "#E3F2FD",
///   "height": 80.0,
///   "labelBehavior": "alwaysShow"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacNavigationBarThemeData implements StacElement {
  /// Creates a [StacNavigationBarThemeData] with the given properties.
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

  /// The height of the navigation bar.
  final double? height;

  /// The background color of the navigation bar.
  final String? backgroundColor;

  /// The z-coordinate at which to place this navigation bar relative to its parent.
  final double? elevation;

  /// The color of the shadow below the navigation bar.
  final String? shadowColor;

  /// The color used to tint the surface of this navigation bar.
  final String? surfaceTintColor;

  /// The color of the indicator for the selected destination.
  final String? indicatorColor;

  /// The shape of the indicator.
  final StacBorder? indicatorShape;

  /// The text style for navigation bar labels.
  final StacTextStyle? labelTextStyle;

  /// The icon theme for navigation bar icons.
  final StacIconThemeData? iconTheme;

  /// The behavior for showing labels.
  final StacNavigationDestinationLabelBehavior? labelBehavior;

  /// Creates a [StacNavigationBarThemeData] from JSON.
  factory StacNavigationBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationBarThemeDataFromJson(json);

  /// Converts this navigation bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacNavigationBarThemeDataToJson(this);
}
