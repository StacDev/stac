import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/utils/stac_scroll_physics.dart';

export 'stac_single_child_scroll_view_parser.dart';

part 'stac_single_child_scroll_view.freezed.dart';
part 'stac_single_child_scroll_view.g.dart';

@freezed
abstract class StacSingleChildScrollView with _$StacSingleChildScrollView {
  const factory StacSingleChildScrollView({
    @Default(Axis.vertical) Axis scrollDirection,
    @Default(false) bool reverse,
    StacEdgeInsets? padding,
    bool? primary,
    StacScrollPhysics? physics,
    Map<String, dynamic>? child,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    @Default(Clip.hardEdge) Clip clipBehavior,
    String? restorationId,
    @Default(ScrollViewKeyboardDismissBehavior.manual)
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
  }) = _StacSingleChildScrollView;

  factory StacSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$StacSingleChildScrollViewFromJson(json);
}
