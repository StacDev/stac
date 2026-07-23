import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacCrossAxisAlignmentParser on StacCrossAxisAlignment {
  CrossAxisAlignment get parse {
    switch (this) {
      case StacCrossAxisAlignment.start:
        return CrossAxisAlignment.start;
      case StacCrossAxisAlignment.end:
        return CrossAxisAlignment.end;
      case StacCrossAxisAlignment.center:
        return CrossAxisAlignment.center;
      case StacCrossAxisAlignment.stretch:
        return CrossAxisAlignment.stretch;
      case StacCrossAxisAlignment.baseline:
        return CrossAxisAlignment.baseline;
    }
  }
}
