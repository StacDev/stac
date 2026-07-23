import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacListTileTitleAlignment] to provide parsing functionality.
extension StacListTileTitleAlignmentParser on StacListTileTitleAlignment {
  /// Parses this [StacListTileTitleAlignment] into a Flutter [ListTileTitleAlignment].
  ListTileTitleAlignment get parse {
    switch (this) {
      case StacListTileTitleAlignment.titleHeight:
        return ListTileTitleAlignment.titleHeight;
      case StacListTileTitleAlignment.threeLine:
        return ListTileTitleAlignment.threeLine;
      case StacListTileTitleAlignment.bottom:
        return ListTileTitleAlignment.bottom;
      case StacListTileTitleAlignment.center:
        return ListTileTitleAlignment.center;
    }
  }
}
