import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/stac.dart';

export 'stac_grid_view_parser.dart';

part 'stac_grid_view.freezed.dart';
part 'stac_grid_view.g.dart';

@freezed
abstract class StacGridView with _$StacGridView {
  const factory StacGridView({
    @Default(Axis.vertical) Axis scrollDirection,
    @Default(false) bool reverse,
    @Default(false) bool primary,
    StacScrollPhysics? physics,
    @Default(false) bool shrinkWrap,
    StacEdgeInsets? padding,
    int? crossAxisCount,
    @Default(0.0) double mainAxisSpacing,
    @Default(0.0) double crossAxisSpacing,
    @Default(1.0) double childAspectRatio,
    double? mainAxisExtent,
    @Default(true) bool addAutomaticKeepAlives,
    @Default(true) bool addRepaintBoundaries,
    @Default(true) bool addSemanticIndexes,
    double? cacheExtent,
    @Default([]) List<Map<String, dynamic>> children,
    int? semanticChildCount,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    @Default(ScrollViewKeyboardDismissBehavior.manual)
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
    String? restorationId,
    @Default(Clip.hardEdge) Clip clipBehavior,
  }) = _StacGridView;

  factory StacGridView.fromJson(Map<String, dynamic> json) =>
      _$StacGridViewFromJson(json);
}
