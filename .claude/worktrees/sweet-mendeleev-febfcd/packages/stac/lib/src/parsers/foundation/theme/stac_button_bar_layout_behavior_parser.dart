import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacButtonBarLayoutBehavior].
///
/// Converts [StacButtonBarLayoutBehavior] to Flutter's [ButtonBarLayoutBehavior].
extension StacButtonBarLayoutBehaviorParser on StacButtonBarLayoutBehavior {
  ButtonBarLayoutBehavior get parse {
    switch (this) {
      case StacButtonBarLayoutBehavior.constrained:
        return ButtonBarLayoutBehavior.constrained;
      case StacButtonBarLayoutBehavior.padded:
        return ButtonBarLayoutBehavior.padded;
    }
  }
}
