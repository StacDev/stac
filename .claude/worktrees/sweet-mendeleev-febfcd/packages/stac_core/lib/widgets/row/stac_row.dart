import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_row.g.dart';

/// A Stac widget that displays its children in a horizontal array.
///
/// This widget corresponds to Flutter's Row widget and arranges its
/// children horizontally. The main axis runs horizontally and the
/// cross axis runs vertically.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacRow(
///   mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
///   children: [
///     StacText(data: 'Left'),
///     StacText(data: 'Right'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "row",
///   "mainAxisAlignment": "spaceBetween",
///   "children": [
///     {"type": "text", "data": "Left"},
///     {"type": "text", "data": "Right"}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacRow extends StacWidget {
  /// Creates a row widget with optional alignment and children.
  const StacRow({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    this.spacing,
    this.children,
  });

  /// How the children should be placed along the main axis (horizontal).
  final StacMainAxisAlignment? mainAxisAlignment;

  /// How much space should be occupied in the main axis.
  final StacMainAxisSize? mainAxisSize;

  /// How the children should be placed along the cross axis (vertical).
  final StacCrossAxisAlignment? crossAxisAlignment;

  /// The text direction to use for resolving alignment.
  final StacTextDirection? textDirection;

  /// The order to lay children out vertically.
  final StacVerticalDirection? verticalDirection;

  /// The baseline to use when aligning text.
  final StacTextBaseline? textBaseline;

  /// The amount of space between each child.
  @DoubleConverter()
  final double? spacing;

  /// The widgets to display in this row.
  final List<StacWidget>? children;

  @override
  String get type => WidgetType.row.name;

  /// Creates a [StacRow] from a JSON map.
  factory StacRow.fromJson(Map<String, dynamic> json) =>
      _$StacRowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacRowToJson(this);
}
