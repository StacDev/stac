import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

extension StacTabBarIndicatorSizeParser on StacTabBarIndicatorSize {
  TabBarIndicatorSize get parse {
    switch (this) {
      case StacTabBarIndicatorSize.label:
        return TabBarIndicatorSize.label;
      case StacTabBarIndicatorSize.tab:
        return TabBarIndicatorSize.tab;
    }
  }
}
