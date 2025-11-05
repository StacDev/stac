import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/effects/stac_shadow/stac_shadow.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/geometry/stac_visual_density/stac_visual_density.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_list_tile_theme_data.g.dart';

/// A Stac model representing Flutter's [ListTileThemeData].
///
/// Defines the theme for list tiles.
@JsonSerializable()
class StacListTileThemeData implements StacElement {
  const StacListTileThemeData({
    this.dense,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.leadingAndTrailingTextStyle,
    this.contentPadding,
    this.tileColor,
    this.selectedTileColor,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.enableFeedback,
    this.visualDensity,
    this.titleAlignment,
    this.shadows,
  });

  final bool? dense;
  final StacBorder? shape;
  final ListTileStyle? style;
  final String? selectedColor;
  final String? iconColor;
  final String? textColor;
  final StacTextStyle? titleTextStyle;
  final StacTextStyle? subtitleTextStyle;
  final StacTextStyle? leadingAndTrailingTextStyle;
  final StacEdgeInsets? contentPadding;
  final String? tileColor;
  final String? selectedTileColor;
  final double? horizontalTitleGap;
  final double? minVerticalPadding;
  final double? minLeadingWidth;
  final bool? enableFeedback;
  final StacVisualDensity? visualDensity;
  final ListTileTitleAlignment? titleAlignment;
  final List<StacShadow>? shadows;

  factory StacListTileThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacListTileThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacListTileThemeDataToJson(this);
}

