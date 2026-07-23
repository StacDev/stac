import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacSizeParser on StacSize {
  Size get parse {
    return Size(width, height);
  }
}
