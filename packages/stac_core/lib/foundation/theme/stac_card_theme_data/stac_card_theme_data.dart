import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/layout/stac_clip.dart';

part 'stac_card_theme_data.g.dart';

/// A Stac model representing Flutter's [CardThemeData].
///
/// Defines the theme for cards, including colors, elevation, shape, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacCardThemeData(
///   color: '#FFFFFF',
///   elevation: 2.0,
///   shadowColor: '#000000',
///   shape: StacBorder(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#FFFFFF",
///   "elevation": 2.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "clipBehavior": "antiAlias",
///   "margin": {"all": 8.0}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacCardThemeData implements StacElement {
  /// Creates a [StacCardThemeData] with the given properties.
  const StacCardThemeData({
    this.clipBehavior,
    this.color,
    this.shadowColor,
    this.surfaceTintColor,
    this.elevation,
    this.margin,
    this.shape,
  });

  /// How to clip the card's content.
  final StacClip? clipBehavior;

  /// The background color of the card.
  final String? color;

  /// The color of the card's shadow.
  final String? shadowColor;

  /// The color used to tint the surface of this card.
  final String? surfaceTintColor;

  /// The z-coordinate at which to place this card relative to its parent.
  final double? elevation;

  /// Empty space to surround the card.
  final StacEdgeInsets? margin;

  /// The shape of the card's [Material].
  final StacBorder? shape;

  /// Creates a [StacCardThemeData] from JSON.
  factory StacCardThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacCardThemeDataFromJson(json);

  /// Converts this card theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacCardThemeDataToJson(this);
}
