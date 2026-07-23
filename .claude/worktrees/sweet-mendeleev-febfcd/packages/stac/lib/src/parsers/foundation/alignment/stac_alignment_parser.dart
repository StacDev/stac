import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacAlignmentParser on StacAlignment {
  Alignment get parse {
    switch (this) {
      case StacAlignment.topLeft:
        return Alignment.topLeft;
      case StacAlignment.topCenter:
        return Alignment.topCenter;
      case StacAlignment.topRight:
        return Alignment.topRight;
      case StacAlignment.centerLeft:
        return Alignment.centerLeft;
      case StacAlignment.center:
        return Alignment.center;
      case StacAlignment.centerRight:
        return Alignment.centerRight;
      case StacAlignment.bottomLeft:
        return Alignment.bottomLeft;
      case StacAlignment.bottomCenter:
        return Alignment.bottomCenter;
      case StacAlignment.bottomRight:
        return Alignment.bottomRight;
    }
  }
}
