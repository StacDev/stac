import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/stac_scroll_physics.dart';

export 'package:stac/src/parsers/stac_tab_bar/stac_tab_bar_parser.dart';

part 'stac_tab_bar.freezed.dart';
part 'stac_tab_bar.g.dart';

@freezed
abstract class StacTabBar with _$StacTabBar {
  const factory StacTabBar({
    required List<Map<String, dynamic>> tabs,
    @Default(0) int initialIndex,
    @Default(false) bool isScrollable,
    StacEdgeInsets? padding,
    String? indicatorColor,
    @Default(true) bool automaticIndicatorColorAdjustment,
    @Default(2.0) double indicatorWeight,
    StacEdgeInsets? indicatorPadding,
    TabBarIndicatorSize? indicatorSize,
    String? labelColor,
    StacTextStyle? labelStyle,
    StacEdgeInsets? labelPadding,
    String? unselectedLabelColor,
    StacTextStyle? unselectedLabelStyle,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    bool? enableFeedback,
    StacScrollPhysics? physics,
    TabAlignment? tabAlignment,
  }) = _StacTabBar;

  factory StacTabBar.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarFromJson(json);
}
