import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_wrap.g.dart';

/// A Stac model representing Flutter's [Wrap] widget.
///
/// A widget that displays its children in multiple horizontal or vertical runs.
///
/// ```dart
/// StacWrap(
///   direction: StacAxis.horizontal,
///   alignment: StacWrapAlignment.start,
///   spacing: 8.0,
///   runAlignment: StacWrapAlignment.start,
///   runSpacing: 8.0,
///   crossAxisAlignment: StacWrapCrossAlignment.start,
///   children: [
///     StacText(data: 'Child 1'),
///     StacText(data: 'Child 2'),
///     StacText(data: 'Child 3'),
///   ],
/// )
/// ```
///
/// ```json
/// {
///   "type": "wrap",
///   "direction": "horizontal",
///   "alignment": "start",
///   "spacing": 8.0,
///   "runAlignment": "start",
///   "runSpacing": 8.0,
///   "crossAxisAlignment": "start",
///   "children": [
///     {"type": "text", "data": "Child 1"},
///     {"type": "text", "data": "Child 2"},
///     {"type": "text", "data": "Child 3"}
///   ]
/// }
/// ```
@JsonSerializable()
class StacWrap extends StacWidget {
  /// Creates a [StacWrap] with the given properties.
  const StacWrap({
    this.direction,
    this.alignment,
    this.spacing,
    this.runAlignment,
    this.runSpacing,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.clipBehavior,
    this.children,
  });

  /// The direction to lay out the children.
  /// Defaults to [StacAxis.horizontal].
  final StacAxis? direction;

  /// How the children within a run should be placed in the main axis.
  /// Defaults to [StacWrapAlignment.start].
  final StacWrapAlignment? alignment;

  /// The amount of space to insert between adjacent children in a run.
  /// Defaults to 0.0.
  @DoubleConverter()
  final double? spacing;

  /// How the runs themselves should be placed in the cross axis.
  /// Defaults to [StacWrapAlignment.start].
  final StacWrapAlignment? runAlignment;

  /// The amount of space to insert between adjacent runs.
  /// Defaults to 0.0.
  @DoubleConverter()
  final double? runSpacing;

  /// How the children within a run should be aligned relative to each other in
  /// the cross axis.
  /// Defaults to [StacWrapCrossAlignment.start].
  final StacWrapCrossAlignment? crossAxisAlignment;

  /// Determines the order to lay children out horizontally and how to interpret
  /// `start` and `end` values.
  /// If null, the ambient [Directionality] is used (which typically provides a [TextDirection]).
  final StacTextDirection? textDirection;

  /// Determines the order to lay children out vertically and how to interpret
  /// `start` and `end` values.
  /// Defaults to [StacVerticalDirection.down].
  final StacVerticalDirection? verticalDirection;

  /// How to clip the content.
  /// Defaults to [StacClip.hardEdge] in the Flutter widget.
  final StacClip? clipBehavior;

  /// The widgets below this widget in the tree.
  final List<StacWidget>? children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.wrap.name;

  /// Creates a [StacWrap] from JSON.
  factory StacWrap.fromJson(Map<String, dynamic> json) =>
      _$StacWrapFromJson(json);

  /// Converts this StacWrap to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacWrapToJson(this);
}
