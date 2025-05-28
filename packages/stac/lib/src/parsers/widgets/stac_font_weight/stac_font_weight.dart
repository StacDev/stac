import 'package:flutter/material.dart';

enum StacFontWeight {
  w100,
  w200,
  w300,
  w400,
  w500,
  w600,
  w700,
  w800,
  w900,
  normal,
  bold;

  FontWeight get value {
    switch (this) {
      case StacFontWeight.w100:
        return FontWeight.w100;

      case StacFontWeight.w200:
        return FontWeight.w200;

      case StacFontWeight.w300:
        return FontWeight.w300;

      case StacFontWeight.w400:
        return FontWeight.w400;

      case StacFontWeight.w500:
        return FontWeight.w500;

      case StacFontWeight.w600:
        return FontWeight.w600;

      case StacFontWeight.w700:
        return FontWeight.w700;

      case StacFontWeight.w800:
        return FontWeight.w800;

      case StacFontWeight.w900:
        return FontWeight.w900;
      case StacFontWeight.normal:
        return FontWeight.normal;
      case StacFontWeight.bold:
        return FontWeight.bold;
    }
  }
}
