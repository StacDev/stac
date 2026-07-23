import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacBottomNavigationBarTypeParser on StacBottomNavigationBarType {
  BottomNavigationBarType get parse {
    switch (this) {
      case StacBottomNavigationBarType.fixed:
        return BottomNavigationBarType.fixed;
      case StacBottomNavigationBarType.shifting:
        return BottomNavigationBarType.shifting;
    }
  }
}
