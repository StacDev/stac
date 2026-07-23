import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacTraversalEdgeBehavior] to provide parsing functionality.
extension StacTraversalEdgeBehaviorParser on StacTraversalEdgeBehavior? {
  /// Parses this [StacTraversalEdgeBehavior] into Flutter's [TraversalEdgeBehavior].
  TraversalEdgeBehavior? get parse {
    switch (this) {
      case StacTraversalEdgeBehavior.closedLoop:
        return TraversalEdgeBehavior.closedLoop;
      case StacTraversalEdgeBehavior.leaveFlutterView:
        return TraversalEdgeBehavior.leaveFlutterView;
      case StacTraversalEdgeBehavior.parentScope:
        return TraversalEdgeBehavior.parentScope;
      case StacTraversalEdgeBehavior.stop:
        return TraversalEdgeBehavior.stop;
      default:
        return null;
    }
  }
}
