import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_sliver_grid.g.dart';

/// A Stac model representing Flutter's [SliverGrid] widget.
///
/// Displays its children in a two-dimensional scrollable grid
/// within a sliver context.
///
/// This widget must be placed inside a [CustomScrollView]
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverGrid(
///   crossAxisCount: 2,
///   mainAxisSpacing: 12,
///   crossAxisSpacing: 12,
///   childAspectRatio: 1.0,
///   children: [
///     StacContainer(color: '#FF5722'),
///     StacContainer(color: '#4CAF50'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverGrid",
///   "crossAxisCount": 2,
///   "mainAxisSpacing": 16,
///   "crossAxisSpacing": 16,
///   "childAspectRatio": 1,
///   "children": [
///     {
///       "type": "container",
///       "color": "#4CAF50",
///       "child": {
///         "type": "center",
///         "child": {
///           "type": "text",
///           "data": "Grid Item 1",
///           "style": {
///             "color": "#FFFFFF",
///             "fontWeight": "bold"
///           }
///         }
///       }
///     },
///     {
///       "type": "container",
///       "color": "#4CAF50",
///       "child": {
///         "type": "center",
///         "child": {
///           "type": "text",
///           "data": "Grid Item 2",
///           "style": {
///             "color": "#FFFFFF",
///             "fontWeight": "bold"
///           }
///         }
///       }
///     }
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverGrid] documentation: https://api.flutter.dev/flutter/widgets/SliverGrid-class.html
@JsonSerializable()
class StacSliverGrid extends StacWidget {
  /// Creates a [StacSliverGrid] with the given properties.
  const StacSliverGrid({
    this.crossAxisCount,
    this.mainAxisSpacing,
    this.crossAxisSpacing,
    this.childAspectRatio,
    this.mainAxisExtent,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.children,
  });

  /// The number of children in the cross axis.
  ///
  /// For example, a value of `2` creates a grid with two columns
  /// when scrolling vertically.
  final int? crossAxisCount;

  /// The amount of space between children in the main axis.
  ///
  /// Defaults to `0.0`.
  @DoubleConverter()
  final double? mainAxisSpacing;

  /// The amount of space between children in the cross axis.
  ///
  /// Defaults to `0.0`.
  @DoubleConverter()
  final double? crossAxisSpacing;

  /// The ratio of the cross-axis to the main-axis extent of each child.
  ///
  /// Defaults to `1.0`.
  @DoubleConverter()
  final double? childAspectRatio;

  /// The extent of each child in the main axis.
  ///
  /// If non-null, this forces children to have a fixed size in the
  /// scrolling direction.
  @DoubleConverter()
  final double? mainAxisExtent;

  /// Whether to add automatic keep-alives for the children.
  ///
  /// Defaults to `true` in Flutter's [SliverGrid].
  final bool? addAutomaticKeepAlives;

  /// Whether to wrap children in repaint boundaries.
  ///
  /// Defaults to `true` in Flutter's [SliverGrid].
  final bool? addRepaintBoundaries;

  /// Whether to add semantic indexes for the children.
  ///
  /// Defaults to `true` in Flutter's [SliverGrid].
  final bool? addSemanticIndexes;

  /// The widgets below this sliver in the tree.
  ///
  /// Each child is rendered as a grid item.
  final List<StacWidget>? children;

  /// Widget type identifier used by the Stac parser system.
  @override
  String get type => WidgetType.sliverGrid.name;

  /// Creates a [StacSliverGrid] from a JSON map.
  factory StacSliverGrid.fromJson(Map<String, dynamic> json) =>
      _$StacSliverGridFromJson(json);

  /// Converts this [StacSliverGrid] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSliverGridToJson(this);
}
