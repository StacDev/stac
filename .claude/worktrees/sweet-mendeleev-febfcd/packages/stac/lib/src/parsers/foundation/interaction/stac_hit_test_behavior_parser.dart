import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacHitTestBehavior] to provide parsing functionality.
extension StacHitTestBehaviorParser on StacHitTestBehavior {
  /// Parses this [StacHitTestBehavior] into a Flutter [HitTestBehavior].
  HitTestBehavior get parse {
    switch (this) {
      case StacHitTestBehavior.deferToChild:
        return HitTestBehavior.deferToChild;
      case StacHitTestBehavior.opaque:
        return HitTestBehavior.opaque;
      case StacHitTestBehavior.translucent:
        return HitTestBehavior.translucent;
    }
  }
}
