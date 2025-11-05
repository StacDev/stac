import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_material_banner_theme_data.g.dart';

/// A Stac model representing Flutter's [MaterialBannerThemeData].
///
/// Defines the theme for material banners.
@JsonSerializable()
class StacMaterialBannerThemeData implements StacElement {
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

  final String? backgroundColor;
  final String? surfaceTintColor;
  final String? shadowColor;
  final String? dividerColor;
  final StacTextStyle? contentTextStyle;
  final double? elevation;
  final StacEdgeInsets? padding;
  final StacEdgeInsets? leadingPadding;

  factory StacMaterialBannerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacMaterialBannerThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacMaterialBannerThemeDataToJson(this);
}

