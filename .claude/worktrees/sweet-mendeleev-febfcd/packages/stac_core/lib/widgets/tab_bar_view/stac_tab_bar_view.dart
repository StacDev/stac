import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_tab_bar_view.g.dart';

/// A Stac model representing Flutter's [TabBarView] widget.
///
/// Displays the content for each tab in a [TabBar], supporting horizontal
/// paging between children.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTabBarView(
///   children: [
///     StacCenter(child: StacText('Page 1')),
///     StacCenter(child: StacText('Page 2')),
///   ],
///   physics: StacScrollPhysics.page,
///   dragStartBehavior: StacDragStartBehavior.start,
///   viewportFraction: 1.0,
///   clipBehavior: StacClip.hardEdge,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "tabBarView",
///   "children": [
///     { "type": "center", "child": { "type": "text", "data": "Page 1" } },
///     { "type": "center", "child": { "type": "text", "data": "Page 2" } }
///   ],
///   "physics": "page",
///   "dragStartBehavior": "start",
///   "viewportFraction": 1.0,
///   "clipBehavior": "hardEdge"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's TabBarView documentation (`https://api.flutter.dev/flutter/material/TabBarView-class.html`)
@JsonSerializable()
class StacTabBarView extends StacWidget {
  /// Creates a [StacTabBarView].
  const StacTabBarView({
    required this.children,
    this.dragStartBehavior,
    this.physics,
    this.viewportFraction,
    this.clipBehavior,
  });

  /// The pages to display; typically one per tab.
  final List<StacWidget> children;

  /// Drag start behavior for horizontal drags.
  final StacDragStartBehavior? dragStartBehavior;

  /// Scroll physics for the page view.
  final StacScrollPhysics? physics;

  /// Fraction of the viewport that each page should occupy.
  @DoubleConverter()
  final double? viewportFraction;

  /// The clipping behavior for content.
  final StacClip? clipBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.tabBarView.name;

  /// Creates a [StacTabBarView] from a JSON map.
  factory StacTabBarView.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarViewFromJson(json);

  /// Converts this [StacTabBarView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacTabBarViewToJson(this);
}
