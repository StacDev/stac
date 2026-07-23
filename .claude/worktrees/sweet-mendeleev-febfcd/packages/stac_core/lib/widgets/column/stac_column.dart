import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_column.g.dart';

/// A Stac model representing Flutter's [Column] widget.
///
/// Lays out its [children] in a vertical array. You can control how the
/// children are laid out along the main axis and the cross axis via
/// [mainAxisAlignment], [mainAxisSize], and [crossAxisAlignment].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacColumn(
///   spacing: 8,
///   mainAxisAlignment: StacMainAxisAlignment.center,
///   children: const [
///     StacText(data: 'One'),
///     StacText(data: 'Two'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "column",
///   "spacing": 8,
///   "mainAxisAlignment": "center",
///   "children": [
///     {"type": "text", "data": "One"},
///     {"type": "text", "data": "Two"}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacColumn extends StacWidget {
  /// Creates a column widget with optional alignment and children.
  const StacColumn({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    this.spacing,
    this.children,
  });

  /// How the children should be placed along the vertical (main) axis.
  ///
  /// Type: [StacMainAxisAlignment]
  final StacMainAxisAlignment? mainAxisAlignment;

  /// How much space should be occupied in the vertical direction.
  ///
  /// Type: [StacMainAxisSize]
  final StacMainAxisSize? mainAxisSize;

  /// How the children should be placed along the horizontal (cross) axis.
  ///
  /// Type: [StacCrossAxisAlignment]
  final StacCrossAxisAlignment? crossAxisAlignment;

  /// The text direction to use for resolving alignment.
  ///
  /// Type: [StacTextDirection]
  final StacTextDirection? textDirection;

  /// The vertical direction in which children are ordered.
  ///
  /// Type: [StacVerticalDirection]
  final StacVerticalDirection? verticalDirection;

  /// The baseline to use for aligning text.
  ///
  /// Type: [StacTextBaseline]
  final StacTextBaseline? textBaseline;

  /// The space to insert between adjacent [children].
  ///
  /// When provided, a fixed gap of this size is applied between items.
  @DoubleConverter()
  final double? spacing;

  /// The list of widgets arranged vertically.
  final List<StacWidget>? children;

  @override
  String get type => WidgetType.column.name;

  /// Creates a [StacColumn] from a JSON map.
  factory StacColumn.fromJson(Map<String, dynamic> json) =>
      _$StacColumnFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacColumnToJson(this);
}
