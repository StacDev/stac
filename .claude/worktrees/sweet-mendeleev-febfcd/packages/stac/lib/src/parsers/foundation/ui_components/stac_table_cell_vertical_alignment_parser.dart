import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

/// Maps [StacTableCellVerticalAlignment] to Flutter's [TableCellVerticalAlignment].
extension StacTableCellVerticalAlignmentParser
    on StacTableCellVerticalAlignment? {
  TableCellVerticalAlignment get parse {
    switch (this) {
      case StacTableCellVerticalAlignment.top:
        return TableCellVerticalAlignment.top;
      case StacTableCellVerticalAlignment.middle:
        return TableCellVerticalAlignment.middle;
      case StacTableCellVerticalAlignment.bottom:
        return TableCellVerticalAlignment.bottom;
      case StacTableCellVerticalAlignment.baseline:
        return TableCellVerticalAlignment.baseline;
      case StacTableCellVerticalAlignment.fill:
        return TableCellVerticalAlignment.fill;
      default:
        return TableCellVerticalAlignment.top;
    }
  }
}
