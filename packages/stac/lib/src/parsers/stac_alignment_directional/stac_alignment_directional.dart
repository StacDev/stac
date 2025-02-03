import 'package:flutter/cupertino.dart';

enum StacAlignmentDirectional {
  topStart,
  topCenter,
  topEnd,
  centerStart,
  center,
  centerEnd,
  bottomStart,
  bottomCenter,
  bottomEnd;

  AlignmentDirectional get value {
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
