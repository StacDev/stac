import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';

part 'stac_bottom_app_bar_theme.g.dart';

/// A Stac model representing Flutter's [BottomAppBarTheme].
///
/// Defines the theme for bottom app bars, including colors, elevation, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacBottomAppBarThemeData(
///   color: '#FFFFFF',
///   elevation: 8.0,
///   height: 56.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#FFFFFF",
///   "elevation": 8.0,
///   "height": 56.0,
///   "surfaceTintColor": "#000000",
///   "shadowColor": "#000000",
///   "padding": {"all": 8.0}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacBottomAppBarThemeData implements StacElement {
  /// Creates a [StacBottomAppBarThemeData] with the given properties.
  const StacBottomAppBarThemeData({
    this.color,
    this.elevation,
    this.height,
    this.surfaceTintColor,
    this.shadowColor,
    this.padding,
  });

  /// The background color of the bottom app bar.
  final String? color;

  /// The z-coordinate at which to place this bottom app bar relative to its parent.
  final double? elevation;

  /// The height of the bottom app bar.
  final double? height;

  /// The color used to tint the surface of this bottom app bar.
  final String? surfaceTintColor;

  /// The color of the shadow below the bottom app bar.
  final String? shadowColor;

  /// The padding around the bottom app bar's content.
  final StacEdgeInsets? padding;

  /// Creates a [StacBottomAppBarThemeData] from JSON.
  factory StacBottomAppBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBottomAppBarThemeDataFromJson(json);

  /// Converts this bottom app bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacBottomAppBarThemeDataToJson(this);
}
