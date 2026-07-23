import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_refresh_indicator.g.dart';

/// A Stac model representing Flutter's [RefreshIndicator] widget.
///
/// A widget that supports the Material "swipe to refresh" idiom.
///
/// ```dart
/// StacRefreshIndicator(
///   onRefresh: StacAction(type: 'myCustomRefreshAction'),
///   child: StacListView(
///     children: [StacText(data: 'Pull me down')],
///   ),
///   displacement: 60,
///   edgeOffset: 10.0,
///   color: StacColor(value: 0xFFFFFFFF),
///   backgroundColor: StacColor(value: 0xFF0000FF),
/// )
/// ```
///
/// ```json
/// {
///   "type": "refreshIndicator",
///   "onRefresh": {"type": "myCustomRefreshAction"},
///   "child": {
///     "type": "listView",
///     "children": [{"type": "text", "data": "Pull me down"}]
///   },
///   "displacement": 60.0,
///   "edgeOffset": 10.0,
///   "color": {"value": 0xFFFFFFFF},
///   "backgroundColor": {"value": 0xFF0000FF}
/// }
/// ```
@JsonSerializable()
class StacRefreshIndicator extends StacWidget {
  /// Creates a [StacRefreshIndicator].
  const StacRefreshIndicator({
    required this.child,
    required this.onRefresh,
    this.displacement,
    this.edgeOffset,
    this.color,
    this.backgroundColor,
    this.semanticsLabel,
    this.semanticsValue,
    this.strokeWidth,
    this.triggerMode,
  });

  /// The widget below this widget in the tree.
  final StacWidget? child;

  /// A StacAction that's called when the user has dragged the refresh indicator
  /// far enough to demonstrate that they want the app to refresh.
  final StacAction? onRefresh;

  /// The distance from the child's top or bottom edge indicates how far the
  /// refresh indicator can be dragged to trigger a refresh.
  /// Defaults to 40.0 in the Flutter widget.
  @DoubleConverter()
  final double? displacement;

  /// The offset where the refresh indicator appears from the edge of the
  /// scrollable content.
  /// Defaults to 0.0 in the Flutter widget.
  @DoubleConverter()
  final double? edgeOffset;

  /// The progress indicator's foreground color.
  final StacColor? color;

  /// The progress indicator's background color.
  final StacColor? backgroundColor;

  /// The semantic label for the indicator.
  final String? semanticsLabel;

  /// The semantic value for the indicator.
  final String? semanticsValue;

  /// The thickness of the `RefreshProgressIndicator` circle, in logical pixels.
  /// Defaults to `RefreshProgressIndicator.defaultStrokeWidth` (2.0) in the Flutter widget.
  @DoubleConverter()
  final double? strokeWidth;

  /// Defines how this widget can be triggered.
  /// Defaults to [StacRefreshIndicatorTriggerMode.onEdge] in the Flutter widget.
  final StacRefreshIndicatorTriggerMode? triggerMode;

  /// Widget type identifier.
  @override
  String get type => WidgetType.refreshIndicator.name;

  /// Creates a [StacRefreshIndicator] from JSON.
  factory StacRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacRefreshIndicatorFromJson(json);

  /// Converts this StacRefreshIndicator to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacRefreshIndicatorToJson(this);
}
