import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

import 'stac_offset_parser.dart';

extension StacRectParser on StacRect {
  Rect? get parse {
    Rect fromCenter() => Rect.fromCenter(
      center: center?.parse ?? Offset.zero,
      width: width ?? 0.0,
      height: height ?? 0.0,
    );
    Rect fromCircle() => Rect.fromCircle(
      center: center?.parse ?? Offset.zero,
      radius: radius ?? 0.0,
    );
    Rect fromLTRB() =>
        Rect.fromLTRB(left ?? 0.0, top ?? 0.0, right ?? 0.0, bottom ?? 0.0);
    Rect fromLTWH() =>
        Rect.fromLTWH(left ?? 0.0, top ?? 0.0, width ?? 0.0, height ?? 0.0);
    Rect fromPoints() =>
        Rect.fromPoints(a?.parse ?? Offset.zero, b?.parse ?? Offset.zero);

    switch (rectType) {
      case StacRectType.fromCenter:
        return fromCenter();
      case StacRectType.fromCircle:
        return fromCircle();
      case StacRectType.fromLTRB:
        return fromLTRB();
      case StacRectType.fromLTWH:
        return fromLTWH();
      case StacRectType.fromPoints:
        return fromPoints();
    }
  }
}
