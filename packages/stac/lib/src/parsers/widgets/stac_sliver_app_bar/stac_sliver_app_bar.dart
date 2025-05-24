import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/parsers/widgets/stac_system_ui_olverlay_style/stac_system_ui_overlay_style.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';

export 'stac_sliver_app_bar_parser.dart';

part 'stac_sliver_app_bar.freezed.dart';
part 'stac_sliver_app_bar.g.dart';

@freezed
abstract class StacSliverAppBar with _$StacSliverAppBar {
  const factory StacSliverAppBar({
    Map<String, dynamic>? leading,
    @Default(true) bool automaticallyImplyLeading,
    Map<String, dynamic>? title,
    List<Map<String, dynamic>>? actions,
    Map<String, dynamic>? flexibleSpace,
    Map<String, dynamic>? bottom,
    StacDouble? elevation,
    StacDouble? scrolledUnderElevation,
    String? shadowColor,
    String? surfaceTintColor,
    @Default(false) bool forceElevated,
    String? backgroundColor,
    String? foregroundColor,
    StacIconThemeData? iconTheme,
    StacIconThemeData? actionsIconTheme,
    @Default(true) bool primary,
    bool? centerTitle,
    @Default(false) bool excludeHeaderSemantics,
    StacDouble? titleSpacing,
    StacDouble? collapsedHeight,
    StacDouble? expandedHeight,
    @Default(false) bool floating,
    @Default(true) bool pinned,
    @Default(false) bool snap,
    @Default(false) bool stretch,
    @Default(StacDouble(100.0)) StacDouble stretchTriggerOffset,
    StacShapeBorder? shape,
    @Default(StacDouble(64.0)) StacDouble toolbarHeight,
    StacDouble? leadingWidth,
    StacTextStyle? toolbarTextStyle,
    StacTextStyle? titleTextStyle,
    StacSystemUIOverlayStyle? systemOverlayStyle,
    @Default(false) bool forceMaterialTransparency,
    Clip? clipBehavior,
    StacEdgeInsets? actionsPadding,
  }) = _StacSliverAppBar;

  factory StacSliverAppBar.fromJson(Map<String, dynamic> json) =>
      _$StacSliverAppBarFromJson(json);
}
