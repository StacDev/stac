import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/utils/stac_scroll_physics.dart';

export 'stac_list_view_parser.dart';

part 'stac_list_view.freezed.dart';
part 'stac_list_view.g.dart';

@freezed
abstract class StacListView with _$StacListView {
  const factory StacListView({
    @Default(Axis.vertical) Axis scrollDirection,
    @Default(false) bool reverse,
    bool? primary,
    StacScrollPhysics? physics,
    @Default(false) bool shrinkWrap,
    StacEdgeInsets? padding,
    @Default(true) bool addAutomaticKeepAlives,
    @Default(true) bool addRepaintBoundaries,
    @Default(true) bool addSemanticIndexes,
    double? cacheExtent,
    @Default([]) List<Map<String, dynamic>> children,
    Map<String, dynamic>? separator,
    int? semanticChildCount,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    @Default(ScrollViewKeyboardDismissBehavior.manual)
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
    String? restorationId,
    @Default(Clip.hardEdge) Clip clipBehavior,
  }) = _StacListView;

  factory StacListView.fromJson(Map<String, dynamic> json) =>
      _$StacListViewFromJson(json);
}
