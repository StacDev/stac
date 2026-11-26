import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacButtonTextTheme].
///
/// Converts [StacButtonTextTheme] to Flutter's [ButtonTextTheme].
extension StacButtonTextThemeParser on StacButtonTextTheme {
  ButtonTextTheme parse(BuildContext context) {
    switch (this) {
      case StacButtonTextTheme.normal:
        return ButtonTextTheme.normal;
      case StacButtonTextTheme.accent:
        return ButtonTextTheme.accent;
      case StacButtonTextTheme.primary:
        return ButtonTextTheme.primary;
    }
  }
}
