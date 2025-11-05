import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/decoration/stac_box_decoration/stac_box_decoration.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_tab_bar_theme_data.g.dart';

/// A Stac model representing Flutter's [TabBarTheme].
///
/// Defines the theme for tab bars.
@JsonSerializable()
class StacTabBarThemeData implements StacElement {
  const StacTabBarThemeData({
    this.indicator,
    this.indicatorColor,
    this.indicatorSize,
    this.dividerColor,
    this.labelColor,
    this.labelPadding,
    this.labelStyle,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.overlayColor,
  });

  final StacBoxDecoration? indicator;
  final String? indicatorColor;
  final TabBarIndicatorSize? indicatorSize;
  final String? dividerColor;
  final String? labelColor;
  final StacEdgeInsets? labelPadding;
  final StacTextStyle? labelStyle;
  final String? unselectedLabelColor;
  final StacTextStyle? unselectedLabelStyle;
  final String? overlayColor;

  factory StacTabBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacTabBarThemeDataToJson(this);
}

