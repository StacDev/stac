import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_table_cell.g.dart';

/// Vertical alignment options for table cells.
///
/// Mirrors Flutter's `TableCellVerticalAlignment` and controls how the child of
/// a table cell is positioned vertically within the row height.
enum StacTableCellVerticalAlignment {
  /// Align at the top of the row.
  top,

  /// Center vertically within the row.
  middle,

  /// Align at the bottom of the row.
  bottom,

  /// Align the baselines of text for the row.
  baseline,

  /// Expand to fill the full height of the row.
  fill,
}

/// A Stac model representing Flutter's [TableCell] widget.
@JsonSerializable()
class StacTableCell extends StacWidget {
  /// Creates a [StacTableCell] with the given properties.
  const StacTableCell({this.verticalAlignment, this.child});

  /// How the child should be aligned vertically within the cell.
  final StacTableCellVerticalAlignment? verticalAlignment;

  /// The widget inside the table cell.
  final StacWidget? child;

  @override
  String get type => WidgetType.tableCell.name;

  /// Creates a [StacTableCell] from a JSON map.
  factory StacTableCell.fromJson(Map<String, dynamic> json) =>
      _$StacTableCellFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacTableCellToJson(this);
}
