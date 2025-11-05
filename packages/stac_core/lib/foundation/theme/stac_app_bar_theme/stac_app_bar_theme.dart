import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac_core/foundation/ui_components/stac_system_ui_overlay_style/stac_system_ui_overlay_style.dart';

part 'stac_app_bar_theme.g.dart';

/// A Stac model representing Flutter's [AppBarTheme].
///
/// Defines the theme for app bars.
@JsonSerializable()
class StacAppBarTheme implements StacElement {
  const StacAppBarTheme({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.iconTheme,
    this.actionsIconTheme,
    this.centerTitle,
    this.titleSpacing,
    this.leadingWidth,
    this.toolbarHeight,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.actionsPadding,
  });

  final String? backgroundColor;
  final String? foregroundColor;
  final double? elevation;
  final double? scrolledUnderElevation;
  final String? shadowColor;
  final String? surfaceTintColor;
  final StacShapeBorder? shape;
  final StacIconThemeData? iconTheme;
  final StacIconThemeData? actionsIconTheme;
  final bool? centerTitle;
  final double? titleSpacing;
  final double? leadingWidth;
  final double? toolbarHeight;
  final StacTextStyle? toolbarTextStyle;
  final StacTextStyle? titleTextStyle;
  final StacSystemUIOverlayStyle? systemOverlayStyle;
  final StacEdgeInsets? actionsPadding;

  factory StacAppBarTheme.fromJson(Map<String, dynamic> json) =>
      _$StacAppBarThemeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacAppBarThemeToJson(this);
}
