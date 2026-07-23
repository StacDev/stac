import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacIconAlignmentParser on StacIconAlignment {
  IconAlignment get parse {
    switch (this) {
      case StacIconAlignment.start:
        return IconAlignment.start;
      case StacIconAlignment.end:
        return IconAlignment.end;
    }
  }
}
