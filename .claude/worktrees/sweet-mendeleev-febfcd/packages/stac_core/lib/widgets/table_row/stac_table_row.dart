import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/decoration/stac_box_decoration/stac_box_decoration.dart';

part 'stac_table_row.g.dart';

/// A single row in a `Table`.
///
/// Holds an optional [decoration] and a list of [children] to render in that
/// row. Each child typically corresponds to a `TableCell` or any widget.
@JsonSerializable()
class StacTableRow extends StacElement {
  /// Creates a [StacTableRow].
  const StacTableRow({this.decoration, this.children = const <StacWidget>[]});

  /// Optional background decoration for the row.
  final StacBoxDecoration? decoration;

  /// Widgets contained in this row.
  final List<StacWidget> children;

  /// Creates a [StacTableRow] from a JSON map.
  factory StacTableRow.fromJson(Map<String, dynamic> json) =>
      _$StacTableRowFromJson(json);

  /// Converts this [StacTableRow] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacTableRowToJson(this);
}
