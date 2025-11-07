import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_material_banner_theme_data.g.dart';

/// A Stac model representing Flutter's [MaterialBannerThemeData].
///
/// Defines the theme for material banners, including colors, elevation,
/// text styles, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacMaterialBannerThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 3.0,
///   contentTextStyle: StacTextStyle(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#FFFFFF",
///   "elevation": 3.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "dividerColor": "#BDBDBD",
///   "padding": {"all": 16.0}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacMaterialBannerThemeData implements StacElement {
  /// Creates a [StacMaterialBannerThemeData] with the given properties.
  const StacMaterialBannerThemeData({
    this.backgroundColor,
    this.surfaceTintColor,
    this.shadowColor,
    this.dividerColor,
    this.contentTextStyle,
    this.elevation,
    this.padding,
    this.leadingPadding,
  });

  /// The background color of the material banner.
  final String? backgroundColor;

  /// The color used to tint the surface of this material banner.
  final String? surfaceTintColor;

  /// The color of the shadow below the material banner.
  final String? shadowColor;

  /// The color of the divider in the material banner.
  final String? dividerColor;

  /// The text style for the material banner's content.
  final StacTextStyle? contentTextStyle;

  /// The z-coordinate at which to place this material banner relative to its parent.
  final double? elevation;

  /// The padding around the material banner's content.
  final StacEdgeInsets? padding;

  /// The padding around the material banner's leading widget.
  final StacEdgeInsets? leadingPadding;

  /// Creates a [StacMaterialBannerThemeData] from JSON.
  factory StacMaterialBannerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacMaterialBannerThemeDataFromJson(json);

  /// Converts this material banner theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacMaterialBannerThemeDataToJson(this);
}
