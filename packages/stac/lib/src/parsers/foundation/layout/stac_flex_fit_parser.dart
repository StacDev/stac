import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

extension StacFlexFitParser on StacFlexFit {
  FlexFit get parse {
    switch (this) {
      case StacFlexFit.tight:
        return FlexFit.tight;
      case StacFlexFit.loose:
        return FlexFit.loose;
    }
  }
}
