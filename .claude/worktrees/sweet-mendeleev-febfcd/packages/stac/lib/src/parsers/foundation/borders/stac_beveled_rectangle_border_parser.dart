import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

import 'stac_border_side_parser.dart';

extension StacBeveledRectangleBorderParser on StacBeveledRectangleBorder {
  BeveledRectangleBorder parse(BuildContext context) {
    return BeveledRectangleBorder(
      side: side?.parse(context) ?? BorderSide.none,
    );
  }
}
