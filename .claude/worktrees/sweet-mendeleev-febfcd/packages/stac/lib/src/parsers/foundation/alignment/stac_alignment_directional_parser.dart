import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacAlignmentDirectionalParser on StacAlignmentDirectional {
  AlignmentDirectional get parse {
    switch (this) {
      case StacAlignmentDirectional.topStart:
        return AlignmentDirectional.topStart;
      case StacAlignmentDirectional.topCenter:
        return AlignmentDirectional.topCenter;
      case StacAlignmentDirectional.topEnd:
        return AlignmentDirectional.topEnd;
      case StacAlignmentDirectional.centerStart:
        return AlignmentDirectional.centerStart;
      case StacAlignmentDirectional.center:
        return AlignmentDirectional.center;
      case StacAlignmentDirectional.centerEnd:
        return AlignmentDirectional.centerEnd;
      case StacAlignmentDirectional.bottomStart:
        return AlignmentDirectional.bottomStart;
      case StacAlignmentDirectional.bottomCenter:
        return AlignmentDirectional.bottomCenter;
      case StacAlignmentDirectional.bottomEnd:
        return AlignmentDirectional.bottomEnd;
    }
  }
}
