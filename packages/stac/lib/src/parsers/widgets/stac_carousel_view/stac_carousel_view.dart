import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';

export 'stac_carousel_view_parser.dart';

part 'stac_carousel_view.freezed.dart';
part 'stac_carousel_view.g.dart';

enum StacCarouselViewType {
  regular,
  weighted,
}

@freezed
abstract class StacCarouselView with _$StacCarouselView {
  const factory StacCarouselView({
    @Default(StacCarouselViewType.regular) StacCarouselViewType carouselType,
    StacEdgeInsets? padding,
    String? backgroundColor,
    StacDouble? elevation,
    String? overlayColor,
    @Default(false) bool itemSnapping,
    @Default(StacDouble.zero) StacDouble shrinkExtent,
    @Default(Axis.horizontal) Axis scrollDirection,
    @Default(false) bool reverse,
    Map<String, dynamic>? onTap,
    @Default(true) bool enableSplash,
    StacDouble? itemExtent,
    List<int>? flexWeights,
    required List<Map<String, dynamic>>? children,
  }) = _StacCarouselView;

  factory StacCarouselView.fromJson(Map<String, dynamic> json) =>
      _$StacCarouselViewFromJson(json);
}
