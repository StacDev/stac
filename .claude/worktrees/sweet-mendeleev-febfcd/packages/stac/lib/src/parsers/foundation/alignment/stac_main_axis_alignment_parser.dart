import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacMainAxisAlignmentParser on StacMainAxisAlignment {
  MainAxisAlignment get parse {
    switch (this) {
      case StacMainAxisAlignment.start:
        return MainAxisAlignment.start;
      case StacMainAxisAlignment.end:
        return MainAxisAlignment.end;
      case StacMainAxisAlignment.center:
        return MainAxisAlignment.center;
      case StacMainAxisAlignment.spaceBetween:
        return MainAxisAlignment.spaceBetween;
      case StacMainAxisAlignment.spaceAround:
        return MainAxisAlignment.spaceAround;
      case StacMainAxisAlignment.spaceEvenly:
        return MainAxisAlignment.spaceEvenly;
    }
  }
}
