import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_rect/mirai_rect.dart';

part 'mirai_rect_tween.freezed.dart';
part 'mirai_rect_tween.g.dart';

@freezed
class MiraiRectTween with _$MiraiRectTween {
  const factory MiraiRectTween({
    required String type,
    MiraiRect? begin,
    MiraiRect? end,
  }) = _MiraiRectTween;

  factory MiraiRectTween.fromJson(Map<String, dynamic> json) =>
      _$MiraiRectTweenFromJson(json);
}

extension MiraiRectTweenParser on MiraiRectTween {
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
