import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

import 'stac_border_side_parser.dart';

extension StacCircleBorderParser on StacCircleBorder {
  CircleBorder parse(BuildContext context) {
    return CircleBorder(
      side: side?.parse(context) ?? BorderSide.none,
      eccentricity: eccentricity ?? 0.0,
    );
  }
}
