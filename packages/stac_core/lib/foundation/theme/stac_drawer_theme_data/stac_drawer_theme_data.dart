import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/layout/stac_clip.dart';

part 'stac_drawer_theme_data.g.dart';

/// A Stac model representing Flutter's [DrawerThemeData].
///
/// Defines the theme for drawers, including colors, elevation, shape, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDrawerThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 16.0,
///   width: 304.0,
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
///   "scrimColor": "#80000000",
///   "width": 304.0,
///   "clipBehavior": "antiAlias"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacDrawerThemeData implements StacElement {
  /// Creates a [StacDrawerThemeData] with the given properties.
  const StacDrawerThemeData({
    this.backgroundColor,
    this.scrimColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.endShape,
    this.width,
    this.clipBehavior,
  });

  /// The background color of the drawer.
  final String? backgroundColor;

  /// The color of the scrim that appears behind the drawer.
  final String? scrimColor;

  /// The z-coordinate at which to place this drawer relative to its parent.
  final double? elevation;

  /// The color of the shadow below the drawer.
  final String? shadowColor;

  /// The color used to tint the surface of this drawer.
  final String? surfaceTintColor;

  /// The shape of the drawer's border.
  final StacShapeBorder? shape;

  /// The shape of the end drawer's border.
  final StacShapeBorder? endShape;

  /// The width of the drawer.
  final double? width;

  /// How to clip the drawer's content.
  final StacClip? clipBehavior;

  /// Creates a [StacDrawerThemeData] from JSON.
  factory StacDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDrawerThemeDataFromJson(json);

  /// Converts this drawer theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacDrawerThemeDataToJson(this);
}
