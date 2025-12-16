import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacTooltipTriggerMode] to provide parsing functionality.
extension StacTooltipTriggerModeParser on StacTooltipTriggerMode {
  /// Parses this [StacTooltipTriggerMode] into a Flutter [TooltipTriggerMode].
  TooltipTriggerMode get parse {
    switch (this) {
      case StacTooltipTriggerMode.manual:
        return TooltipTriggerMode.manual;
      case StacTooltipTriggerMode.longPress:
        return TooltipTriggerMode.longPress;
      case StacTooltipTriggerMode.tap:
        return TooltipTriggerMode.tap;
    }
  }
}
