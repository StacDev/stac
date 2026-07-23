import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacWrapAlignmentParser on StacWrapAlignment {
  WrapAlignment get parse {
    switch (this) {
      case StacWrapAlignment.start:
        return WrapAlignment.start;
      case StacWrapAlignment.end:
        return WrapAlignment.end;
      case StacWrapAlignment.center:
        return WrapAlignment.center;
      case StacWrapAlignment.spaceBetween:
        return WrapAlignment.spaceBetween;
      case StacWrapAlignment.spaceAround:
        return WrapAlignment.spaceAround;
      case StacWrapAlignment.spaceEvenly:
        return WrapAlignment.spaceEvenly;
    }
  }
}
