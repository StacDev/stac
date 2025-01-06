import 'package:flutter/material.dart';
import 'package:mirai/src/parsers/mirai_rect_tween/mirai_rect_tween.dart';
import 'package:mirai/src/parsers/mirai_rect/mirai_rect.dart';

class MiraiRectTweenParser {
  const MiraiRectTweenParser();

  MiraiRectTween getModel(Map<String, dynamic> json) =>
      MiraiRectTween.fromJson(json);

  RectTween parse(BuildContext context, MiraiRectTween model) {
    final begin = model.begin?.parse;
    final end = model.end?.parse;

    switch (model.type) {
      case 'materialRectArcTween':
        return MaterialRectArcTween(begin: begin, end: end);
      case 'materialRectCenterArcTween':
        return MaterialRectCenterArcTween(begin: begin, end: end);
      default:
        return RectTween(begin: begin, end: end);
    }
  }
}
