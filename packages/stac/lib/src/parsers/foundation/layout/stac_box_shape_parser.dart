import 'package:material_ui/material_ui.dart';
import 'package:stac_core/stac_core.dart';

extension StacBoxShapeParser on StacBoxShape {
  BoxShape get parse {
    switch (this) {
      case StacBoxShape.rectangle:
        return BoxShape.rectangle;
      case StacBoxShape.circle:
        return BoxShape.circle;
    }
  }
}
