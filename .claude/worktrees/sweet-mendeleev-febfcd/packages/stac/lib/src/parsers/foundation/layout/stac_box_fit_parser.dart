import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacBoxFitParser on StacBoxFit {
  BoxFit get parse {
    switch (this) {
      case StacBoxFit.fill:
        return BoxFit.fill;
      case StacBoxFit.contain:
        return BoxFit.contain;
      case StacBoxFit.cover:
        return BoxFit.cover;
      case StacBoxFit.fitWidth:
        return BoxFit.fitWidth;
      case StacBoxFit.fitHeight:
        return BoxFit.fitHeight;
      case StacBoxFit.scaleDown:
        return BoxFit.scaleDown;
      case StacBoxFit.none:
        return BoxFit.none;
    }
  }
}
