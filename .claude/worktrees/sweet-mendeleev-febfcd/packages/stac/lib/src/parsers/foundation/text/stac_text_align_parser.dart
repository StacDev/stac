import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextAlignParser on StacTextAlign {
  TextAlign get parse {
    switch (this) {
      case StacTextAlign.left:
        return TextAlign.left;
      case StacTextAlign.right:
        return TextAlign.right;
      case StacTextAlign.center:
        return TextAlign.center;
      case StacTextAlign.justify:
        return TextAlign.justify;
      case StacTextAlign.start:
        return TextAlign.start;
      case StacTextAlign.end:
        return TextAlign.end;
    }
  }
}
