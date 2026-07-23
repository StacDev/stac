import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacMainAxisSizeParser on StacMainAxisSize {
  MainAxisSize get parse {
    switch (this) {
      case StacMainAxisSize.min:
        return MainAxisSize.min;
      case StacMainAxisSize.max:
        return MainAxisSize.max;
    }
  }
}
