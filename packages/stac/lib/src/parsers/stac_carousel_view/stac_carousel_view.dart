import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/stac.dart';

export 'package:stac/src/parsers/stac_carousel_view/stac_carousel_view_parser.dart';

part 'stac_carousel_view.freezed.dart';
part 'stac_carousel_view.g.dart';

enum StacCarouselViewType {
  regular,
  weighted,
}

@freezed
class StacCarouselView with _$StacCarouselView {
  const factory StacCarouselView({
    @Default(StacCarouselViewType.regular) StacCarouselViewType carouselType,
    StacEdgeInsets? padding,
    String? backgroundColor,
    double? elevation,
    String? overlayColor,
    @Default(false) bool itemSnapping,
    @Default(0.0) double shrinkExtent,
    @Default(Axis.horizontal) Axis scrollDirection,
    @Default(false) bool reverse,
    Map<String, dynamic>? onTap,
    @Default(true) bool enableSplash,
    double? itemExtent,
    List<int>? flexWeights,
    required List<Map<String, dynamic>>? children,
  }) = _StacCarouselView;

  factory StacCarouselView.fromJson(Map<String, dynamic> json) =>
      _$StacCarouselViewFromJson(json);
}
