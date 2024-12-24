import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

export 'package:mirai/src/parsers/mirai_carousel_view/mirai_carousel_view_parser.dart';

part 'mirai_carousel_view.freezed.dart';
part 'mirai_carousel_view.g.dart';

enum MiraiCarouselViewType {
  regular,
  weighted,
}

@freezed
class MiraiCarouselView with _$MiraiCarouselView {
  const factory MiraiCarouselView({
    @Default(MiraiCarouselViewType.regular) MiraiCarouselViewType carouselType,
    MiraiEdgeInsets? padding,
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
  }) = _MiraiCarouselView;

  factory MiraiCarouselView.fromJson(Map<String, dynamic> json) =>
      _$MiraiCarouselViewFromJson(json);
}
