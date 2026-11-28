import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

extension StacMaterialTapTargetSizeParser on StacMaterialTapTargetSize {
  MaterialTapTargetSize get parse {
    switch (this) {
      case StacMaterialTapTargetSize.padded:
        return MaterialTapTargetSize.padded;
      case StacMaterialTapTargetSize.shrinkWrap:
        return MaterialTapTargetSize.shrinkWrap;
    }
  }
}
