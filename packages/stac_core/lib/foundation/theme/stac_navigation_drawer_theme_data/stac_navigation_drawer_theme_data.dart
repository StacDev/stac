import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_size/stac_size.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';

part 'stac_navigation_drawer_theme_data.g.dart';

/// A Stac model representing Flutter's [NavigationDrawerThemeData].
///
/// Defines the theme for navigation drawers.
@JsonSerializable()
class StacNavigationDrawerThemeData implements StacElement {
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

  final double? tileHeight;
  final String? backgroundColor;
  final double? elevation;
  final String? shadowColor;
  final String? surfaceTintColor;
  final String? indicatorColor;
  final StacShapeBorder? indicatorShape;
  final StacSize? indicatorSize;
  final StacTextStyle? labelTextStyle;
  final StacIconThemeData? iconTheme;

  factory StacNavigationDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationDrawerThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacNavigationDrawerThemeDataToJson(this);
}

