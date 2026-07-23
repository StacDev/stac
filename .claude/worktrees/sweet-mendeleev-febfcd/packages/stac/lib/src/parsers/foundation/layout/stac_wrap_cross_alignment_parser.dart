import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacWrapCrossAlignmentParser on StacWrapCrossAlignment {
  WrapCrossAlignment get parse {
    switch (this) {
      case StacWrapCrossAlignment.start:
        return WrapCrossAlignment.start;
      case StacWrapCrossAlignment.end:
        return WrapCrossAlignment.end;
      case StacWrapCrossAlignment.center:
        return WrapCrossAlignment.center;
    }
  }
}
