import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';
import 'package:stac_core/widgets/table_cell/stac_table_cell.dart';
import 'package:stac_core/widgets/table_row/stac_table_row.dart';

part 'stac_table.g.dart';

/// A Stac model representing Flutter's [Table] widget.
///
/// Displays its children in rows and columns. Configure column widths,
/// borders, alignment, and text baseline.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacTable(
///   children: [
///     StacTableRow(children: [
///       StacText(data: 'A'),
///       StacText(data: 'B'),
///     ]),
///     StacTableRow(children: [
///       StacText(data: 'C'),
///       StacText(data: 'D'),
///     ]),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "table",
///   "children": [
///     {"children": [{"type": "text", "data": "A"}, {"type": "text", "data": "B"}]},
///     {"children": [{"type": "text", "data": "C"}, {"type": "text", "data": "D"}]}
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See Flutter docs: `https://api.flutter.dev/flutter/widgets/Table-class.html`
///
@JsonSerializable()
class StacTable extends StacWidget {
  /// Creates a table widget with the specified properties.
  const StacTable({
    this.children = const <StacTableRow>[],
    this.columnWidths,
    this.defaultColumnWidth,
    this.textDirection,
    this.border,
    this.defaultVerticalAlignment,
    this.textBaseline,
  });

  /// The table rows.
  final List<StacTableRow> children;

  /// Per-column width configuration.
  final Map<int, StacTableColumnWidth>? columnWidths;

  /// Default width configuration for columns without explicit config.
  final StacTableColumnWidth? defaultColumnWidth;

  /// Text direction used to interpret start/end in the table.
  final StacTextDirection? textDirection;

  /// Border drawn around and inside the table.
  final StacTableBorder? border;

  /// Default vertical alignment for cells.
  final StacTableCellVerticalAlignment? defaultVerticalAlignment;

  /// Text baseline used when aligning on baselines.
  final StacTextBaseline? textBaseline;

  @override
  /// Widget type identifier.
  String get type => WidgetType.table.name;

  /// Creates a [StacTable] from a JSON map.
  factory StacTable.fromJson(Map<String, dynamic> json) =>
      _$StacTableFromJson(json);

  @override
  /// Converts this [StacTable] instance to a JSON map.
  Map<String, dynamic> toJson() => _$StacTableToJson(this);
}
