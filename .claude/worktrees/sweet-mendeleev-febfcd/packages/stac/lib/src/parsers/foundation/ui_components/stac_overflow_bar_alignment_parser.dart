import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacOverflowBarAlignmentParser on StacOverflowBarAlignment {
  OverflowBarAlignment get parse {
    switch (this) {
      case StacOverflowBarAlignment.start:
        return OverflowBarAlignment.start;
      case StacOverflowBarAlignment.end:
        return OverflowBarAlignment.end;
      case StacOverflowBarAlignment.center:
        return OverflowBarAlignment.center;
    }
  }
}
