import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacScrollViewKeyboardDismissBehavior] to provide parsing functionality.
extension StacScrollViewKeyboardDismissBehaviorParser
    on StacScrollViewKeyboardDismissBehavior {
  /// Parses this [StacScrollViewKeyboardDismissBehavior] into a Flutter [ScrollViewKeyboardDismissBehavior] object.
  ScrollViewKeyboardDismissBehavior get parse {
    switch (this) {
      case StacScrollViewKeyboardDismissBehavior.manual:
        return ScrollViewKeyboardDismissBehavior.manual;
      case StacScrollViewKeyboardDismissBehavior.onDrag:
        return ScrollViewKeyboardDismissBehavior.onDrag;
    }
  }
}
