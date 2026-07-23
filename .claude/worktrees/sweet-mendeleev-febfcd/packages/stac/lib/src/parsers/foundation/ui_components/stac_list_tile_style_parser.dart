import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacListTileStyle] to provide parsing functionality.
extension StacListTileStyleParser on StacListTileStyle {
  /// Parses this [StacListTileStyle] into a Flutter [ListTileStyle].
  ListTileStyle get parse {
    switch (this) {
      case StacListTileStyle.list:
        return ListTileStyle.list;
      case StacListTileStyle.drawer:
        return ListTileStyle.drawer;
    }
  }
}
