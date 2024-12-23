import 'package:flutter/cupertino.dart';

enum MiraiAlignmentDirectional {
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
      case MiraiAlignmentDirectional.topStart:
        return AlignmentDirectional.topStart;
      case MiraiAlignmentDirectional.topCenter:
        return AlignmentDirectional.topCenter;
      case MiraiAlignmentDirectional.topEnd:
        return AlignmentDirectional.topEnd;
      case MiraiAlignmentDirectional.centerStart:
        return AlignmentDirectional.centerStart;
      case MiraiAlignmentDirectional.center:
        return AlignmentDirectional.center;
      case MiraiAlignmentDirectional.centerEnd:
        return AlignmentDirectional.centerEnd;
      case MiraiAlignmentDirectional.bottomStart:
        return AlignmentDirectional.bottomStart;
      case MiraiAlignmentDirectional.bottomCenter:
        return AlignmentDirectional.bottomCenter;
      case MiraiAlignmentDirectional.bottomEnd:
        return AlignmentDirectional.bottomEnd;
    }
  }
}
