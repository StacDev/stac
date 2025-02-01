import 'package:flutter/material.dart';

enum FloatingActionButtonType {
  extended,
  large,
  medium,
  small,
}

enum StacFloatingActionButtonLocation {
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
      case StacFloatingActionButtonLocation.startTop:
        return FloatingActionButtonLocation.startTop;
      case StacFloatingActionButtonLocation.miniStartTop:
        return FloatingActionButtonLocation.miniStartTop;
      case StacFloatingActionButtonLocation.centerTop:
        return FloatingActionButtonLocation.centerTop;
      case StacFloatingActionButtonLocation.miniCenterTop:
        return FloatingActionButtonLocation.miniCenterTop;
      case StacFloatingActionButtonLocation.endTop:
        return FloatingActionButtonLocation.endTop;
      case StacFloatingActionButtonLocation.miniEndTop:
        return FloatingActionButtonLocation.miniEndTop;
      case StacFloatingActionButtonLocation.startFloat:
        return FloatingActionButtonLocation.startFloat;
      case StacFloatingActionButtonLocation.miniStartFloat:
        return FloatingActionButtonLocation.miniStartFloat;
      case StacFloatingActionButtonLocation.centerFloat:
        return FloatingActionButtonLocation.centerFloat;
      case StacFloatingActionButtonLocation.miniCenterFloat:
        return FloatingActionButtonLocation.miniCenterFloat;
      case StacFloatingActionButtonLocation.endFloat:
        return FloatingActionButtonLocation.endFloat;
      case StacFloatingActionButtonLocation.miniEndFloat:
        return FloatingActionButtonLocation.miniEndFloat;
      case StacFloatingActionButtonLocation.startDocked:
        return FloatingActionButtonLocation.startDocked;
      case StacFloatingActionButtonLocation.miniStartDocked:
        return FloatingActionButtonLocation.miniStartDocked;
      case StacFloatingActionButtonLocation.centerDocked:
        return FloatingActionButtonLocation.centerDocked;
      case StacFloatingActionButtonLocation.miniCenterDocked:
        return FloatingActionButtonLocation.miniCenterDocked;
      case StacFloatingActionButtonLocation.endDocked:
        return FloatingActionButtonLocation.endDocked;
      case StacFloatingActionButtonLocation.miniEndDocked:
        return FloatingActionButtonLocation.miniEndDocked;
    }
  }
}
