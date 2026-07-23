import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_single_child_scroll_view.g.dart';

/// A Stac model for a box in which a single widget can be scrolled.
///
/// This widget is useful when you have a single box that will normally be
/// entirely visible, for example a clock face in a time picker, but you need to
/// make sure it can be scrolled if the container gets too small in one axis
/// (the scrollDirection).
///
/// Corresponds to Flutter's [SingleChildScrollView] widget.
///
/// Example:
///
/// ```dart
/// StacSingleChildScrollView(
///   scrollDirection: StacAxis.vertical,
///   child: StacColumn(
///     children: [
///       StacContainer(height: 200, color: '#FF0000'), // Red
///       StacContainer(height: 200, color: '#00FF00'), // Green
///       StacContainer(height: 200, color: '#0000FF'), // Blue
///       StacContainer(height: 200, color: '#FFFF00'), // Yellow
///     ],
///   ),
/// )
/// ```
///
/// ```json
/// {
///   "widget": "SingleChildScrollView",
///   "scrollDirection": "vertical",
///   "child": {
///     "widget": "Column",
///     "children": [
///       {
///         "widget": "Container",
///         "height": 200,
///         "color": "#FF0000"
///       },
///       {
///         "widget": "Container",
///         "height": 200,
///         "color": "#00FF00"
///       },
///       {
///         "widget": "Container",
///         "height": 200,
///         "color": "#0000FF"
///       },
///       {
///         "widget": "Container",
///         "height": 200,
///         "color": "#FFFF00"
///       }
///     ]
///   }
/// }
/// ```
///
/// See also:
///  * Flutter's [SingleChildScrollView documentation](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html)
@JsonSerializable()
class StacSingleChildScrollView extends StacWidget {
  /// Creates a [StacSingleChildScrollView].
  ///
  /// All properties are optional. The parser will provide appropriate defaults
  /// from Flutter's [SingleChildScrollView] if they are not specified.
  const StacSingleChildScrollView({
    this.scrollDirection,
    this.reverse,
    this.padding,
    this.primary,
    this.physics,
    this.child,
    this.dragStartBehavior,
    this.clipBehavior,
    this.restorationId,
    this.keyboardDismissBehavior,
  });

  /// The axis along which the scroll view scrolls.
  final StacAxis? scrollDirection;

  /// Whether the scroll view scrolls in the reading direction.
  final bool? reverse;

  /// The amount of space by which to inset the child.
  final StacEdgeInsets? padding;

  /// Whether this is the primary scroll view associated with the parent
  /// [PrimaryScrollController].
  final bool? primary;

  /// How the scroll view should respond to user input.
  final StacScrollPhysics? physics;

  /// The widget that scrolls.
  final StacWidget? child;

  /// Determines the way that drag start behavior is handled.
  final StacDragStartBehavior? dragStartBehavior;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Defaults to [Clip.hardEdge].
  final StacClip? clipBehavior;

  /// {@macro flutter.widgets.scrollable.restorationId}
  final String? restorationId;

  /// {@macro flutter.widgets.scroll_view.keyboardDismissBehavior}
  final StacScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  @override
  String get type => WidgetType.singleChildScrollView.name;

  /// Creates a [StacSingleChildScrollView] from a JSON map.
  factory StacSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$StacSingleChildScrollViewFromJson(json);

  /// Converts this [StacSingleChildScrollView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSingleChildScrollViewToJson(this);
}
