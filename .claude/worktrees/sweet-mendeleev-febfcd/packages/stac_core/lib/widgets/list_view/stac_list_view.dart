import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_list_view.g.dart';

/// A Stac model representing Flutter's [ListView.separated] widget.
///
/// A scrollable, linear array of widgets that are separated by separator widgets.
///
///
/// dart
/// StacListView(
///   children: [
///     {"type": "text", "data": "Item 1"},
///     {"type": "text", "data": "Item 2"}
///   ],
///   separator: {"type": "sizedBox", "height": 8.0}, // Example separator
///   scrollDirection: StacAxis.vertical,
///   reverse: false,
///   physics: StacScrollPhysics(type: 'bouncingScrollPhysics'), // Example physics
///   padding: StacEdgeInsets.all(10.0),
///   // ... other properties
/// )
///
///
///
/// json
/// {
///   "type": "listView",
///   "children": [
///     {"type": "text", "data": "Item 1"},
///     {"type": "text", "data": "Item 2"}
///   ],
///   "separator": {"type": "sizedBox", "height": 8.0},
///   "scrollDirection": "vertical",
///   "reverse": false,
///   "physics": {"type": "bouncingScrollPhysics"},
///   "padding": {"all": 10.0}
///   // ... other properties
/// }
///
@JsonSerializable()
class StacListView extends StacWidget {
  /// Creates a [StacListView].
  const StacListView({
    this.scrollDirection,
    this.reverse,
    this.primary,
    this.physics,
    this.shrinkWrap,
    this.padding,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.cacheExtent,
    this.children,
    this.separator,
    this.semanticChildCount,
    this.dragStartBehavior,
    this.keyboardDismissBehavior,
    this.restorationId,
    this.clipBehavior,
  });

  /// The axis along which the scroll view scrolls.
  final StacAxis? scrollDirection;

  /// Whether the scroll view scrolls in the reading direction.
  final bool? reverse;

  /// Whether this is the primary scroll view associated with the parent
  /// [PrimaryScrollController].
  final bool? primary;

  /// How the scroll view should respond to user input.
  final StacScrollPhysics? physics;

  /// Whether the extent of the scroll view in the [scrollDirection] should be
  /// determined by the contents being viewed.
  final bool? shrinkWrap;

  /// The amount of space by which to inset the children.
  final StacEdgeInsets? padding;

  /// Whether to wrap each child in an [AutomaticKeepAlive].
  final bool? addAutomaticKeepAlives;

  /// Whether to wrap each child in a [RepaintBoundary].
  final bool? addRepaintBoundaries;

  /// Whether to wrap each child in an [IndexedSemantics].
  final bool? addSemanticIndexes;

  /// The cache extent of the ListView.
  @DoubleConverter()
  final double? cacheExtent;

  /// The StacWidgets to display in the list.
  final List<StacWidget>? children;

  /// The StacWidget to display between list items as a separator.
  final StacWidget? separator;

  /// The number of children that will contribute semantic information.
  final int? semanticChildCount;

  /// Determines the way that drag start behavior is handled.
  final StacDragStartBehavior? dragStartBehavior;

  /// {@macro flutter.widgets.ScrollView.keyboardDismissBehavior}
  final StacScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  /// {@macro flutter.widgets.scrollable.restorationId}
  final String? restorationId;

  /// {@macro flutter.material.Material.clipBehavior}
  final StacClip? clipBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.listView.name;

  /// Creates a [StacListView] from JSON.
  factory StacListView.fromJson(Map<String, dynamic> json) =>
      _$StacListViewFromJson(json);

  /// Converts this [StacListView] to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacListViewToJson(this);
}
