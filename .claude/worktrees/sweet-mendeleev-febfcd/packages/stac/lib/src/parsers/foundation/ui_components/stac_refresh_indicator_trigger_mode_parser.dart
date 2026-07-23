import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacRefreshIndicatorTriggerMode] to provide parsing functionality.
extension StacRefreshIndicatorTriggerModeParser
    on StacRefreshIndicatorTriggerMode {
  /// Parses this [StacRefreshIndicatorTriggerMode] into a Flutter [RefreshIndicatorTriggerMode].
  RefreshIndicatorTriggerMode get parse {
    switch (this) {
      case StacRefreshIndicatorTriggerMode.onEdge:
        return RefreshIndicatorTriggerMode.onEdge;
      case StacRefreshIndicatorTriggerMode.anywhere:
        return RefreshIndicatorTriggerMode.anywhere;
    }
  }
}
