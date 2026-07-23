import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextDecorationStyleParser on StacTextDecorationStyle {
  TextDecorationStyle get parse {
    switch (this) {
      case StacTextDecorationStyle.solid:
        return TextDecorationStyle.solid;
      case StacTextDecorationStyle.double:
        return TextDecorationStyle.double;
      case StacTextDecorationStyle.dotted:
        return TextDecorationStyle.dotted;
      case StacTextDecorationStyle.dashed:
        return TextDecorationStyle.dashed;
      case StacTextDecorationStyle.wavy:
        return TextDecorationStyle.wavy;
    }
  }
}
