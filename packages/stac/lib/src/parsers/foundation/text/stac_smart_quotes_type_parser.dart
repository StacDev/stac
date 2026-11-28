import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

extension StacSmartQuotesTypeParser on StacSmartQuotesType {
  SmartQuotesType get parse {
    switch (this) {
      case StacSmartQuotesType.disabled:
        return SmartQuotesType.disabled;
      case StacSmartQuotesType.enabled:
        return SmartQuotesType.enabled;
    }
  }
}
