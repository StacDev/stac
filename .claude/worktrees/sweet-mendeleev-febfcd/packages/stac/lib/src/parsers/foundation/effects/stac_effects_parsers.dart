import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacFilterQualityParser on StacFilterQuality {
  FilterQuality get parse {
    switch (this) {
      case StacFilterQuality.none:
        return FilterQuality.none;
      case StacFilterQuality.low:
        return FilterQuality.low;
      case StacFilterQuality.medium:
        return FilterQuality.medium;
      case StacFilterQuality.high:
        return FilterQuality.high;
    }
  }
}
