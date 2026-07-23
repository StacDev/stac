import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacBrightnessParser on StacBrightness {
  Brightness get parse {
    switch (this) {
      case StacBrightness.light:
        return Brightness.light;
      case StacBrightness.dark:
        return Brightness.dark;
      case StacBrightness.system:
        return Brightness.light;
    }
  }
}
