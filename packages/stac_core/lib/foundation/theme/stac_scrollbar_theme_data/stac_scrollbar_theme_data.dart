import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';

part 'stac_scrollbar_theme_data.g.dart';

/// A Stac model representing Flutter's [ScrollbarThemeData].
///
/// Defines the theme for scrollbars, including colors, visibility, thickness,
/// and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacScrollbarThemeData(
///   thumbColor: '#757575',
///   thickness: 8.0,
///   radius: 4.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "thumbColor": "#757575",
///   "trackColor": "#F5F5F5",
///   "thickness": 8.0,
///   "radius": 4.0,
///   "thumbVisibility": true,
///   "trackVisibility": false,
///   "interactive": true
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacScrollbarThemeData implements StacElement {
  /// Creates a [StacScrollbarThemeData] with the given properties.
  const StacScrollbarThemeData({
    this.thumbVisibility,
    this.thickness,
    this.trackVisibility,
    this.radius,
    this.thumbColor,
    this.trackColor,
    this.trackBorderColor,
    this.crossAxisMargin,
    this.mainAxisMargin,
    this.minThumbLength,
    this.interactive,
  });

  /// Whether the scrollbar thumb should be visible.
  final bool? thumbVisibility;

  /// The thickness of the scrollbar.
  final double? thickness;

  /// Whether the scrollbar track should be visible.
  final bool? trackVisibility;

  /// The radius of the scrollbar's rounded corners.
  final double? radius;

  /// The color of the scrollbar thumb.
  final String? thumbColor;

  /// The color of the scrollbar track.
  final String? trackColor;

  /// The color of the scrollbar track border.
  final String? trackBorderColor;

  /// The margin from the cross axis edge.
  final double? crossAxisMargin;

  /// The margin from the main axis edge.
  final double? mainAxisMargin;

  /// The minimum length of the scrollbar thumb.
  final double? minThumbLength;

  /// Whether the scrollbar is interactive.
  final bool? interactive;

  /// Creates a [StacScrollbarThemeData] from JSON.
  factory StacScrollbarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacScrollbarThemeDataFromJson(json);

  /// Converts this scrollbar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacScrollbarThemeDataToJson(this);
}
