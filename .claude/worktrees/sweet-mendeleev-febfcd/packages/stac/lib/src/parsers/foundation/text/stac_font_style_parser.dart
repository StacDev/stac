import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacFontStyleParser on StacFontStyle {
  FontStyle get parse {
    switch (this) {
      case StacFontStyle.normal:
        return FontStyle.normal;
      case StacFontStyle.italic:
        return FontStyle.italic;
    }
  }
}
