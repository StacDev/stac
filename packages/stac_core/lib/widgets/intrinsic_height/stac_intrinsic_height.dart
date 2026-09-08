import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_intrinsic_height.g.dart';

/// A Stac model representing Flutter's [IntrinsicHeight] widget.
///
/// A widget that sizes its child to the child's maximum intrinsic height.
///
/// This is useful when [child] would otherwise be laid out with an
/// unbounded height — for example a `row` with `crossAxisAlignment: stretch`
/// inside a horizontal `singleChildScrollView`, whose own height is
/// unconstrained because it sits inside a vertically scrolling list.
/// Without `intrinsicHeight`, `stretch` has no finite height to stretch
/// into and layout fails; `intrinsicHeight` computes the child's real
/// maximum intrinsic height first and lays it out with that as a fixed
/// value.
///
/// This class is relatively expensive, because it adds a speculative layout
/// pass before the final layout phase. Avoid using it where possible. In
/// the worst case, this widget can result in a layout that is O(N^2) in
/// the number of widgets in the subtree.
///
/// ```dart
/// StacIntrinsicHeight(
///   child: StacRow(
///     crossAxisAlignment: StacCrossAxisAlignment.stretch,
///     children: [
///       StacContainer(color: StacColors.red, width: 100),
///       StacContainer(color: StacColors.blue, width: 100, height: 150),
///     ],
///   ),
/// )
/// ```
///
/// ```json
/// {
///   "type": "intrinsicHeight",
///   "child": {
///     "type": "row",
///     "crossAxisAlignment": "stretch",
///     "children": [
///       {"type": "container", "color": "#FF0000", "width": 100},
///       {"type": "container", "color": "#0000FF", "width": 100, "height": 150}
///     ]
///   }
/// }
/// ```
@JsonSerializable()
class StacIntrinsicHeight extends StacWidget {
  /// Creates a [StacIntrinsicHeight] with the given properties.
  const StacIntrinsicHeight({this.child});

  /// The widget below this widget in the tree.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.intrinsicHeight.name;

  /// Creates a [StacIntrinsicHeight] from JSON.
  factory StacIntrinsicHeight.fromJson(Map<String, dynamic> json) =>
      _$StacIntrinsicHeightFromJson(json);

  /// Converts this [StacIntrinsicHeight] to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacIntrinsicHeightToJson(this);
}
