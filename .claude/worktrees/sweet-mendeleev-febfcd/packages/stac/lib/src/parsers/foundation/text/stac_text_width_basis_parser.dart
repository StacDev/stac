import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextWidthBasisParser on StacTextWidthBasis {
  TextWidthBasis get parse {
    switch (this) {
      case StacTextWidthBasis.parent:
        return TextWidthBasis.parent;
      case StacTextWidthBasis.longestLine:
        return TextWidthBasis.longestLine;
    }
  }
}
