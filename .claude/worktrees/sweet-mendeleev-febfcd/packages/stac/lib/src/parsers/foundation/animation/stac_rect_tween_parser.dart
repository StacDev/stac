import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

import '../geometry/stac_rect_parser.dart';

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
