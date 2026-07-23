import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacAxisParser on StacAxis {
  Axis get parse {
    switch (this) {
      case StacAxis.horizontal:
        return Axis.horizontal;
      case StacAxis.vertical:
        return Axis.vertical;
    }
  }
}
