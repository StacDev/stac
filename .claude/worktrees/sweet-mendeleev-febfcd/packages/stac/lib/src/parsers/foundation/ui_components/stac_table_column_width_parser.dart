import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Parses a [StacTableColumnWidth] to a Flutter [TableColumnWidth].
extension StacTableColumnWidthParser on StacTableColumnWidth {
  TableColumnWidth get parse {
    switch (type) {
      case StacTableColumnWidthType.fixedColumnWidth:
        return FixedColumnWidth(value ?? 0.0);
      case StacTableColumnWidthType.flexColumnWidth:
        return FlexColumnWidth(value ?? 1.0);
      case StacTableColumnWidthType.fractionColumnWidth:
        return FractionColumnWidth(value ?? 0.5);
      case StacTableColumnWidthType.intrinsicColumnWidth:
        return IntrinsicColumnWidth(flex: value ?? 1.0);
    }
  }
}
