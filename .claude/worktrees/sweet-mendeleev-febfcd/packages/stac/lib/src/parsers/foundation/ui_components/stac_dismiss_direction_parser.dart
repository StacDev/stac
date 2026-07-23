import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacDismissDirection] to map to Flutter's [DismissDirection].
extension StacDismissDirectionParser on StacDismissDirection? {
  DismissDirection? get parse {
    switch (this) {
      case StacDismissDirection.horizontal:
        return DismissDirection.horizontal;
      case StacDismissDirection.vertical:
        return DismissDirection.vertical;
      case StacDismissDirection.down:
        return DismissDirection.down;
      case StacDismissDirection.up:
        return DismissDirection.up;
      case StacDismissDirection.endToStart:
        return DismissDirection.endToStart;
      case StacDismissDirection.startToEnd:
        return DismissDirection.startToEnd;
      default:
        return null;
    }
  }
}
