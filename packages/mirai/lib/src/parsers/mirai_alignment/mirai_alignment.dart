import 'package:flutter/cupertino.dart';

enum MiraiAlignment {
  topLeft,
  topCenter,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottomCenter,
  bottomRight;

  Alignment get value {
    switch (this) {
      case MiraiAlignment.topLeft:
        return Alignment.topLeft;
      case MiraiAlignment.topCenter:
        return Alignment.topCenter;
      case MiraiAlignment.topRight:
        return Alignment.topRight;
      case MiraiAlignment.centerLeft:
        return Alignment.centerLeft;
      case MiraiAlignment.center:
        return Alignment.center;
      case MiraiAlignment.centerRight:
        return Alignment.centerRight;
      case MiraiAlignment.bottomLeft:
        return Alignment.bottomLeft;
      case MiraiAlignment.bottomCenter:
        return Alignment.bottomCenter;
      case MiraiAlignment.bottomRight:
        return Alignment.bottomRight;
    }
  }
}
