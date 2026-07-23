import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacBottomNavigationBarLandscapeLayoutParser
    on StacBottomNavigationBarLandscapeLayout {
  BottomNavigationBarLandscapeLayout get parse {
    switch (this) {
      case StacBottomNavigationBarLandscapeLayout.spread:
        return BottomNavigationBarLandscapeLayout.spread;
      case StacBottomNavigationBarLandscapeLayout.centered:
        return BottomNavigationBarLandscapeLayout.centered;
      case StacBottomNavigationBarLandscapeLayout.linear:
        return BottomNavigationBarLandscapeLayout.linear;
    }
  }
}
