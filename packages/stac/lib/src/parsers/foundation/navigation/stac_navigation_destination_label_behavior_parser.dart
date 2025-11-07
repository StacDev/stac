import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacNavigationDestinationLabelBehavior].
///
/// Converts [StacNavigationDestinationLabelBehavior] to Flutter's [NavigationDestinationLabelBehavior].
extension StacNavigationDestinationLabelBehaviorParser
    on StacNavigationDestinationLabelBehavior {
  NavigationDestinationLabelBehavior get parse {
    switch (this) {
      case StacNavigationDestinationLabelBehavior.alwaysShow:
        return NavigationDestinationLabelBehavior.alwaysShow;
      case StacNavigationDestinationLabelBehavior.alwaysHide:
        return NavigationDestinationLabelBehavior.alwaysHide;
      case StacNavigationDestinationLabelBehavior.onlyShowSelected:
        return NavigationDestinationLabelBehavior.onlyShowSelected;
    }
  }
}
