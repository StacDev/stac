import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacSmartDashesTypeParser on StacSmartDashesType {
  SmartDashesType get parse {
    switch (this) {
      case StacSmartDashesType.disabled:
        return SmartDashesType.disabled;
      case StacSmartDashesType.enabled:
        return SmartDashesType.enabled;
    }
  }
}
