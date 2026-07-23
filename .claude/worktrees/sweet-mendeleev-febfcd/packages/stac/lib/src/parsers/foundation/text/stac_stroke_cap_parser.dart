import 'dart:ui';

import 'package:stac_core/stac_core.dart';

extension StacStrokeCapParser on StacStrokeCap? {
  StrokeCap? get parse {
    switch (this) {
      case StacStrokeCap.butt:
        return StrokeCap.butt;
      case StacStrokeCap.round:
        return StrokeCap.round;
      case StacStrokeCap.square:
        return StrokeCap.square;
      default:
        return null;
    }
  }
}
