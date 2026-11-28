import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

extension StacBorderStyleParser on StacBorderStyle {
  BorderStyle get parse {
    switch (this) {
      case StacBorderStyle.none:
        return BorderStyle.none;
      case StacBorderStyle.solid:
        return BorderStyle.solid;
    }
  }
}
