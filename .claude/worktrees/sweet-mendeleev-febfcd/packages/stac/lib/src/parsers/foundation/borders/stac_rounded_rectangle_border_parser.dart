import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

import 'stac_border_radius_parser.dart';
import 'stac_border_side_parser.dart';

extension StacRoundedRectangleBorderParser on StacRoundedRectangleBorder {
  RoundedRectangleBorder parse(BuildContext context) {
    return RoundedRectangleBorder(
      side: side?.parse(context) ?? BorderSide.none,
      borderRadius: borderRadius?.parse ?? BorderRadius.zero,
    );
  }
}
