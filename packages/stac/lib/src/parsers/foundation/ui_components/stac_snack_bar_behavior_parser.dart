import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

/// Extends [StacSnackBarBehavior] to map to Flutter's [SnackBarBehavior].
extension StacSnackBarBehaviorParser on StacSnackBarBehavior? {
  SnackBarBehavior? get parse {
    switch (this) {
      case StacSnackBarBehavior.fixed:
        return SnackBarBehavior.fixed;
      case StacSnackBarBehavior.floating:
        return SnackBarBehavior.floating;
      default:
        return null;
    }
  }
}
