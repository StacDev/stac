import 'package:flutter/gestures.dart';
import 'package:stac_core/stac_core.dart';

extension StacDragStartBehaviorParser on StacDragStartBehavior {
  DragStartBehavior get parse {
    switch (this) {
      case StacDragStartBehavior.down:
        return DragStartBehavior.down;
      case StacDragStartBehavior.start:
        return DragStartBehavior.start;
    }
  }
}
