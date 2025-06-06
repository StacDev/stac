import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/stac_scroll_physics.dart';

export 'package:stac/src/parsers/widgets/stac_custom_scroll_view/stac_custom_scroll_view_parser.dart';

part 'stac_custom_scroll_view.freezed.dart';
part 'stac_custom_scroll_view.g.dart';

@freezed
abstract class StacCustomScrollView with _$StacCustomScrollView {
  const factory StacCustomScrollView({
    @Default([]) List<Map<String, dynamic>> slivers,
    @Default(Axis.vertical) Axis scrollDirection,
    @Default(false) bool reverse,
    bool? primary,
    StacScrollPhysics? physics,
    @Default(false) bool shrinkWrap,
    @Default(StacDouble.zero) StacDouble anchor,
    StacDouble? cacheExtent,
    int? semanticChildCount,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    @Default(ScrollViewKeyboardDismissBehavior.manual)
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
    String? restorationId,
    @Default(Clip.hardEdge) Clip clipBehavior,
    @Default(HitTestBehavior.opaque) HitTestBehavior hitTestBehavior,
  }) = _StacCustomScrollView;

  factory StacCustomScrollView.fromJson(Map<String, dynamic> json) =>
      _$StacCustomScrollViewFromJson(json);
}
