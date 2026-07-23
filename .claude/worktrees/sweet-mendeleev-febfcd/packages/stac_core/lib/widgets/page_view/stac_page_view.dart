import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_page_view.g.dart';

/// A Stac model representing Flutter's [PageView] widget.
///
/// A scrollable list that works page by page, with each child being a full page.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacPageView(
///   initialPage: 0,
///   keepPage: true,
///   viewportFraction: 1.0,
///   children: [
///     StacContainer(color: '#FF0000'),
///     StacContainer(color: '#00FF00'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "pageView",
///   "initialPage": 0,
///   "keepPage": true,
///   "viewportFraction": 1.0,
///   "children": [
///     { "type": "container", "color": "#FF0000" },
///     { "type": "container", "color": "#00FF00" }
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's PageView documentation (`https://api.flutter.dev/flutter/widgets/PageView-class.html`)
@JsonSerializable()
class StacPageView extends StacWidget {
  /// Creates a [StacPageView].
  const StacPageView({
    this.scrollDirection,
    this.reverse,
    this.physics,
    this.pageSnapping,
    this.onPageChanged,
    this.dragStartBehavior,
    this.allowImplicitScrolling,
    this.restorationId,
    this.clipBehavior,
    this.padEnds,
    this.initialPage,
    this.keepPage,
    this.viewportFraction,
    this.children,
  });

  /// The axis along which the page view scrolls.
  final StacAxis? scrollDirection;

  /// Whether the page view scrolls in the reading direction.
  final bool? reverse;

  /// The scroll physics to use for the page view.
  final StacScrollPhysics? physics;

  /// Whether to snap to page boundaries during scrolling.
  final bool? pageSnapping;

  /// Action invoked when the page changes.
  final StacAction? onPageChanged;

  /// The drag start behavior for drag gestures.
  final StacDragStartBehavior? dragStartBehavior;

  /// Whether to allow implicit scrolling.
  final bool? allowImplicitScrolling;

  /// The restoration ID to restore scroll offset across app launches.
  final String? restorationId;

  /// The clip behavior for the content.
  final StacClip? clipBehavior;

  /// Whether to add padding to the ends of the list.
  final bool? padEnds;

  /// The initial page to display.
  final int? initialPage;

  /// Whether to save the current page with the [PageController].
  final bool? keepPage;

  /// Fraction of the viewport that each page should occupy.
  @DoubleConverter()
  final double? viewportFraction;

  /// The list of pages to display.
  final List<StacWidget>? children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.pageView.name;

  /// Creates a [StacPageView] from a JSON map.
  factory StacPageView.fromJson(Map<String, dynamic> json) =>
      _$StacPageViewFromJson(json);

  /// Converts this [StacPageView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacPageViewToJson(this);
}
