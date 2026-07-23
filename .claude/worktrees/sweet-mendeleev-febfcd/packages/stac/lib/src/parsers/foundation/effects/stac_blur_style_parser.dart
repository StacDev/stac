import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacBlurStyleParser on StacBlurStyle {
  BlurStyle get parse {
    switch (this) {
      case StacBlurStyle.normal:
        return BlurStyle.normal;
      case StacBlurStyle.solid:
        return BlurStyle.solid;
      case StacBlurStyle.outer:
        return BlurStyle.outer;
      case StacBlurStyle.inner:
        return BlurStyle.inner;
    }
  }
}
