import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_expanded.g.dart';

/// A Stac model representing Flutter's [Expanded] widget.
///
/// Expands a child of a [Row], [Column], or [Flex] so that the child fills
/// the available space in the main axis, according to the [flex] factor.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacRow(children: const [
///   StacExpanded(child: StacText(data: 'Left')),
///   StacExpanded(flex: 2, child: StacText(data: 'Right (2x)')),
/// ])
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "row",
///   "children": [
///     {"type": "expanded", "child": {"type": "text", "data": "Left"}},
///     {"type": "expanded", "flex": 2, "child": {"type": "text", "data": "Right (2x)"}}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacExpanded extends StacWidget {
  /// Creates an expanded widget with optional flex factor and child.
  const StacExpanded({this.flex, this.child});

  /// The flex factor to use for this child.
  ///
  /// If null, defaults to 1. Higher values take more space in the main axis.
  final int? flex;

  /// The widget that is expanded within its parent [Flex] layout.
  final StacWidget? child;

  @override
  String get type => WidgetType.expanded.name;

  /// Creates a [StacExpanded] from a JSON map.
  factory StacExpanded.fromJson(Map<String, dynamic> json) =>
      _$StacExpandedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacExpandedToJson(this);
}
