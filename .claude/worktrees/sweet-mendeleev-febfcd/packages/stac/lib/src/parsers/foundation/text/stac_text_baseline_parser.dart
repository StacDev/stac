import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Maps [StacTextBaseline] to Flutter's [TextBaseline].
extension StacTextBaselineParser on StacTextBaseline {
  /// Parses this [StacTextBaseline] into a Flutter [TextBaseline].
  TextBaseline get parse {
    switch (this) {
      case StacTextBaseline.alphabetic:
        return TextBaseline.alphabetic;
      case StacTextBaseline.ideographic:
        return TextBaseline.ideographic;
    }
  }
}
