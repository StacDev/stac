import 'package:flutter/material.dart';

enum MiraiFontWeight {
  w100,
  w200,
  w300,
  w400,
  w500,
  w600,
  w700,
  w800,
  w900;

  FontWeight get value {
    switch (this) {
      case MiraiFontWeight.w100:
        return FontWeight.w100;

      case MiraiFontWeight.w200:
        return FontWeight.w200;

      case MiraiFontWeight.w300:
        return FontWeight.w300;

      case MiraiFontWeight.w400:
        return FontWeight.w400;

      case MiraiFontWeight.w500:
        return FontWeight.w500;

      case MiraiFontWeight.w600:
        return FontWeight.w600;

      case MiraiFontWeight.w700:
        return FontWeight.w700;

      case MiraiFontWeight.w800:
        return FontWeight.w800;

      case MiraiFontWeight.w900:
        return FontWeight.w900;
    }
  }
}
