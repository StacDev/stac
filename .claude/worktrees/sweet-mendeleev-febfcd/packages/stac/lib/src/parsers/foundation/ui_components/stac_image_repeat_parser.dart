import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacImageRepeatParser on StacImageRepeat {
  ImageRepeat get parse {
    switch (this) {
      case StacImageRepeat.repeat:
        return ImageRepeat.repeat;
      case StacImageRepeat.repeatX:
        return ImageRepeat.repeatX;
      case StacImageRepeat.repeatY:
        return ImageRepeat.repeatY;
      case StacImageRepeat.noRepeat:
        return ImageRepeat.noRepeat;
    }
  }
}
