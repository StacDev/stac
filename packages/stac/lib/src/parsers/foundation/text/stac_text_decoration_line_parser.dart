import 'package:flutter/painting.dart';
import 'package:stac_core/foundation/text/stac_text_types.dart';

extension StacTextDecorationLineParser on StacTextDecorationLine {
  TextDecoration get parse {
    switch (this) {
      case StacTextDecorationLine.none:
        return TextDecoration.none;
      case StacTextDecorationLine.underline:
        return TextDecoration.underline;
      case StacTextDecorationLine.overline:
        return TextDecoration.overline;
      case StacTextDecorationLine.lineThrough:
        return TextDecoration.lineThrough;
    }
  }
}
