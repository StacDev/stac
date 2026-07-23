import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/decoration/stac_box_decoration_parser.dart';
import 'package:stac_core/stac_core.dart';

/// Parses a [StacTableRow] to a Flutter [TableRow].
extension StacTableRowParser on StacTableRow {
  TableRow parse(BuildContext context) {
    return TableRow(
      decoration: decoration?.parse(context),
      children: children.parseList(context) ?? const <Widget>[],
    );
  }
}
