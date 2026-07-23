import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

import 'stac_border_radius_parser.dart';
import 'stac_border_side_parser.dart';

extension StacContinuousRectangleBorderParser on StacContinuousRectangleBorder {
  ContinuousRectangleBorder parse(BuildContext context) {
    return ContinuousRectangleBorder(
      side: side?.parse(context) ?? BorderSide.none,
      borderRadius: borderRadius?.parse ?? BorderRadius.zero,
    );
  }
}
