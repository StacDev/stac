import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/stac.dart';

export 'stac_page_view_parser.dart';

part 'stac_page_view.freezed.dart';
part 'stac_page_view.g.dart';

@freezed
abstract class StacPageView with _$StacPageView {
  const factory StacPageView({
    @Default(Axis.horizontal) Axis scrollDirection,
    @Default(false) bool reverse,
    StacScrollPhysics? physics,
    @Default(true) bool pageSnapping,
    Map<String, dynamic>? onPageChanged,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    @Default(false) bool allowImplicitScrolling,
    String? restorationId,
    @Default(Clip.hardEdge) Clip clipBehavior,
    @Default(true) bool padEnds,
    @Default(0) int initialPage,
    @Default(true) keepPage,
    @Default(StacDouble(1.0)) StacDouble viewportFraction,
    @Default([]) List<Map<String, dynamic>> children,
  }) = _StacPageView;

  factory StacPageView.fromJson(Map<String, dynamic> json) =>
      _$StacPageViewFromJson(json);
}
