import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

extension StacAlignmentGeometryParser on StacAlignmentGeometry {
  Alignment get parse {
    return Alignment(dx, dy);
  }
}
