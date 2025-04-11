import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_rect/stac_rect.dart';

part 'stac_rect_tween.freezed.dart';
part 'stac_rect_tween.g.dart';

@freezed
abstract class StacRectTween with _$StacRectTween {
  const factory StacRectTween({
    required String type,
    StacRect? begin,
    StacRect? end,
  }) = _StacRectTween;

  factory StacRectTween.fromJson(Map<String, dynamic> json) =>
      _$StacRectTweenFromJson(json);
}

extension StacRectTweenParser on StacRectTween {
  RectTween parse(BuildContext context) {
    final begin = this.begin?.parse;
    final end = this.end?.parse;

    switch (type) {
      case 'materialRectArcTween':
        return MaterialRectArcTween(begin: begin, end: end);
      case 'materialRectCenterArcTween':
        return MaterialRectCenterArcTween(begin: begin, end: end);
      default:
        return RectTween(begin: begin, end: end);
    }
  }
}
