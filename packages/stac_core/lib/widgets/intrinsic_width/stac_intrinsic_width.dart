import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_intrinsic_width.g.dart';

/// A Stac model representing Flutter's [IntrinsicWidth] widget.
///
/// A widget that sizes its child to the child's maximum intrinsic width.
///
/// Analogous to [StacIntrinsicHeight] but along the horizontal axis. This
/// is useful when [child] would otherwise be laid out with an unbounded
/// width — for example a `column` with `crossAxisAlignment: stretch`
/// inside a horizontally scrolling widget.
///
/// This class is relatively expensive, because it adds a speculative layout
/// pass before the final layout phase. Avoid using it where possible.
///
/// ```dart
/// StacIntrinsicWidth(
///   child: StacColumn(
///     crossAxisAlignment: StacCrossAxisAlignment.stretch,
///     children: [
///       StacText(data: 'Short'),
///       StacText(data: 'A much longer line of text'),
///     ],
///   ),
/// )
/// ```
///
/// ```json
/// {
///   "type": "intrinsicWidth",
///   "child": {
///     "type": "column",
///     "crossAxisAlignment": "stretch",
///     "children": [
///       {"type": "text", "data": "Short"},
///       {"type": "text", "data": "A much longer line of text"}
///     ]
///   }
/// }
/// ```
@JsonSerializable()
class StacIntrinsicWidth extends StacWidget {
  /// Creates a [StacIntrinsicWidth] with the given properties.
  const StacIntrinsicWidth({this.stepWidth, this.stepHeight, this.child});

  /// If non-null, force the child's width to be a multiple of this value.
  @DoubleConverter()
  final double? stepWidth;

  /// If non-null, force the child's height to be a multiple of this value.
  @DoubleConverter()
  final double? stepHeight;

  /// The widget below this widget in the tree.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.intrinsicWidth.name;

  /// Creates a [StacIntrinsicWidth] from JSON.
  factory StacIntrinsicWidth.fromJson(Map<String, dynamic> json) =>
      _$StacIntrinsicWidthFromJson(json);

  /// Converts this [StacIntrinsicWidth] to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacIntrinsicWidthToJson(this);
}
