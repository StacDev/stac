import 'package:flutter/material.dart';

enum FloatingActionButtonType {
  extended,
  large,
  medium,
  small,
}

enum MiraiFloatingActionButtonLocation {
  startTop,
  miniStartTop,
  centerTop,
  miniCenterTop,
  endTop,
  miniEndTop,
  startFloat,
  miniStartFloat,
  centerFloat,
  miniCenterFloat,
  endFloat,
  miniEndFloat,
  startDocked,
  miniStartDocked,
  centerDocked,
  miniCenterDocked,
  endDocked,
  miniEndDocked;

  FloatingActionButtonLocation get value {
    switch (this) {
      case MiraiFloatingActionButtonLocation.startTop:
        return FloatingActionButtonLocation.startTop;
      case MiraiFloatingActionButtonLocation.miniStartTop:
        return FloatingActionButtonLocation.miniStartTop;
      case MiraiFloatingActionButtonLocation.centerTop:
        return FloatingActionButtonLocation.centerTop;
      case MiraiFloatingActionButtonLocation.miniCenterTop:
        return FloatingActionButtonLocation.miniCenterTop;
      case MiraiFloatingActionButtonLocation.endTop:
        return FloatingActionButtonLocation.endTop;
      case MiraiFloatingActionButtonLocation.miniEndTop:
        return FloatingActionButtonLocation.miniEndTop;
      case MiraiFloatingActionButtonLocation.startFloat:
        return FloatingActionButtonLocation.startFloat;
      case MiraiFloatingActionButtonLocation.miniStartFloat:
        return FloatingActionButtonLocation.miniStartFloat;
      case MiraiFloatingActionButtonLocation.centerFloat:
        return FloatingActionButtonLocation.centerFloat;
      case MiraiFloatingActionButtonLocation.miniCenterFloat:
        return FloatingActionButtonLocation.miniCenterFloat;
      case MiraiFloatingActionButtonLocation.endFloat:
        return FloatingActionButtonLocation.endFloat;
      case MiraiFloatingActionButtonLocation.miniEndFloat:
        return FloatingActionButtonLocation.miniEndFloat;
      case MiraiFloatingActionButtonLocation.startDocked:
        return FloatingActionButtonLocation.startDocked;
      case MiraiFloatingActionButtonLocation.miniStartDocked:
        return FloatingActionButtonLocation.miniStartDocked;
      case MiraiFloatingActionButtonLocation.centerDocked:
        return FloatingActionButtonLocation.centerDocked;
      case MiraiFloatingActionButtonLocation.miniCenterDocked:
        return FloatingActionButtonLocation.miniCenterDocked;
      case MiraiFloatingActionButtonLocation.endDocked:
        return FloatingActionButtonLocation.endDocked;
      case MiraiFloatingActionButtonLocation.miniEndDocked:
        return FloatingActionButtonLocation.miniEndDocked;
    }
  }
}
