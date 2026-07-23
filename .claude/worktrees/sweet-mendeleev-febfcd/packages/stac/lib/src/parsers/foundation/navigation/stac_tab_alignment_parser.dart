import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacTabAlignmentParser on StacTabAlignment {
  TabAlignment get parse {
    switch (this) {
      case StacTabAlignment.center:
        return TabAlignment.center;
      case StacTabAlignment.fill:
        return TabAlignment.fill;
      case StacTabAlignment.startOffset:
        return TabAlignment.startOffset;
      case StacTabAlignment.start:
        return TabAlignment.start;
    }
  }
}
