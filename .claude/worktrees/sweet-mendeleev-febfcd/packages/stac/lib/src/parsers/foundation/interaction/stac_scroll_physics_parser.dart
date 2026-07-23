import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacScrollPhysics] enum to provide parsing functionality.
extension StacScrollPhysicsEnumParser on StacScrollPhysics {
  /// Parses this [StacScrollPhysics] enum into a Flutter [ScrollPhysics] object.
  ScrollPhysics get parse {
    switch (this) {
      case StacScrollPhysics.never:
        return const NeverScrollableScrollPhysics();
      case StacScrollPhysics.bouncing:
        return const BouncingScrollPhysics();
      case StacScrollPhysics.clamping:
        return const ClampingScrollPhysics();
      case StacScrollPhysics.fixed:
        return const FixedExtentScrollPhysics();
      case StacScrollPhysics.page:
        return const PageScrollPhysics();
    }
  }
}
