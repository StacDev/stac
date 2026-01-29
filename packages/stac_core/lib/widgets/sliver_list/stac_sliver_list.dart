import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_sliver_list.g.dart';

/// A Stac model representing Flutter's [SliverList] widget.
///
/// Displays its children in a linear scrollable list within
/// a sliver context.
///
/// This widget must be placed inside a [CustomScrollView].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverList(
///   children: [
///     StacText(data: 'Item 1'),
///     StacText(data: 'Item 2'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
///   {
///         "type": "sliverList",
///         "children": [
///           {
///             "type": "container",
///             "height": 80,
///             "color": "primary",
///             "child": {
///               "type": "center",
///               "child": {
///                 "type": "text",
///                 "data": "List Item 1"
///               }
///             }
///           },
///           {
///             "type": "container",
///             "height": 80,
///             "color": "secondary",
///             "child": {
///               "type": "center",
///               "child": {
///                 "type": "text",
///                 "data": "List Item 2"
///               }
///             }
///           },
///           {
///             "type": "container",
///             "height": 80,
///             "color": "success",
///             "child": {
///               "type": "center",
///               "child": {
///                 "type": "text",
///                 "data": "List Item 3"
///               }
///             }
///           }
///         ]
///       }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverList] documentation:
///    https://api.flutter.dev/flutter/widgets/SliverList-class.html
@JsonSerializable()
class StacSliverList extends StacWidget {
  /// Creates a [StacSliverList] with the given properties.
  const StacSliverList({
    this.children,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.semanticIndexOffset,
  });

  /// The widgets below this sliver in the tree.
  ///
  /// Each child is rendered as a list item.
  final List<StacWidget>? children;

  /// Whether to add automatic keep-alives for the children.
  ///
  /// Defaults to `true` in Flutter's [SliverList].
  final bool? addAutomaticKeepAlives;

  /// Whether to wrap children in repaint boundaries.
  ///
  /// Defaults to `true` in Flutter's [SliverList].
  final bool? addRepaintBoundaries;

  /// Whether to add semantic indexes for the children.
  ///
  /// Defaults to `true` in Flutter's [SliverList].
  final bool? addSemanticIndexes;

  /// An offset added to each child’s semantic index.
  ///
  /// Useful when combining multiple slivers.
  final int? semanticIndexOffset;

  /// Widget type identifier used by the Stac parser system.
  @override
  String get type => WidgetType.sliverList.name;

  /// Creates a [StacSliverList] from a JSON map.
  factory StacSliverList.fromJson(Map<String, dynamic> json) =>
      _$StacSliverListFromJson(json);

  /// Converts this [StacSliverList] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSliverListToJson(this);
}
