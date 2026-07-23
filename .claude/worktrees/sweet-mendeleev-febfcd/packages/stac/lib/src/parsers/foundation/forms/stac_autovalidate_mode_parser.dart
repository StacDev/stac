import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacAutovalidateMode] to provide parsing functionality.
extension StacAutovalidateModeParser on StacAutovalidateMode {
  /// Parses this [StacAutovalidateMode] into a Flutter [AutovalidateMode].
  AutovalidateMode get parse {
    switch (this) {
      case StacAutovalidateMode.disabled:
        return AutovalidateMode.disabled;
      case StacAutovalidateMode.always:
        return AutovalidateMode.always;
      case StacAutovalidateMode.onUserInteraction:
        return AutovalidateMode.onUserInteraction;
    }
  }
}
