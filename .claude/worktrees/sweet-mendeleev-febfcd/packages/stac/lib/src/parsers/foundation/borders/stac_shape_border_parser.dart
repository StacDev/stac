import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

import 'stac_circle_border_parser.dart';
import 'stac_rounded_rectangle_border_parser.dart';

extension StacShapeBorderParser on StacShapeBorder {
  OutlinedBorder parse(BuildContext context) {
    switch (this) {
      case StacRoundedRectangleBorder():
        return (this as StacRoundedRectangleBorder).parse(context);
      case StacCircleBorder():
        return (this as StacCircleBorder).parse(context);
      default:
        return RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.zero,
        );
    }
  }
}
