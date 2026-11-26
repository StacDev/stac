import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

extension StacOffsetParser on StacOffset {
  Offset get parse {
    return Offset(dx, dy);
  }
}
