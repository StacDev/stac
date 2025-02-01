import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/stac_scroll_physics.dart';

export 'package:stac/src/parsers/stac_tab_bar_view/stac_tab_bar_view_parser.dart';

part 'stac_tab_bar_view.freezed.dart';
part 'stac_tab_bar_view.g.dart';

@freezed
class StacTabBarView with _$StacTabBarView {
  const factory StacTabBarView({
    required List<Map<String, dynamic>> children,
    @Default(0) int initialIndex,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    StacScrollPhysics? physics,
    @Default(1.0) double viewportFraction,
    @Default(Clip.hardEdge) Clip clipBehavior,
  }) = _StacTabBarView;

  factory StacTabBarView.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarViewFromJson(json);
}
