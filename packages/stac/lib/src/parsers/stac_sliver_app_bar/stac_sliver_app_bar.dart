import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/stac_shape_border/stac_shape_border.dart';

import '../../../stac.dart';
import '../stac_system_ui_olverlay_style/stac_system_ui_overlay_style.dart';

part 'stac_sliver_app_bar.freezed.dart';
part 'stac_sliver_app_bar.g.dart';

@freezed
class StacSliverAppBar with _$StacSliverAppBar {
  const factory StacSliverAppBar({
    Map<String, dynamic>? leading,
    @Default(true) bool automaticallyImplyLeading,
    Map<String, dynamic>? title,
    List<Map<String, dynamic>>? actions,
    Map<String, dynamic>? flexibleSpace,
    Map<String, dynamic>? bottom,
    double? elevation,
    double? scrolledUnderElevation,
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
    double? titleSpacing,
    double? collapsedHeight,
    double? expandedHeight,
    @Default(false) bool floating,
    @Default(true) bool pinned,
    @Default(false) bool snap,
    @Default(false) bool stretch,
    @Default(100.0) double stretchTriggerOffset,
    StacShapeBorder? shape,
    // StacAsyncCallback? onStretchTrigger, TODO: Implement StacAsyncCallback
    @Default(64.0) double toolbarHeight,
    double? leadingWidth,
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
