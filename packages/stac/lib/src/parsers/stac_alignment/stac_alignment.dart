import 'package:flutter/cupertino.dart';

enum StacAlignment {
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
      case StacAlignment.topLeft:
        return Alignment.topLeft;
      case StacAlignment.topCenter:
        return Alignment.topCenter;
      case StacAlignment.topRight:
        return Alignment.topRight;
      case StacAlignment.centerLeft:
        return Alignment.centerLeft;
      case StacAlignment.center:
        return Alignment.center;
      case StacAlignment.centerRight:
        return Alignment.centerRight;
      case StacAlignment.bottomLeft:
        return Alignment.bottomLeft;
      case StacAlignment.bottomCenter:
        return Alignment.bottomCenter;
      case StacAlignment.bottomRight:
        return Alignment.bottomRight;
    }
  }
}
