import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_carousel_view.g.dart';

/// A Stac model representing Flutter's [CarouselView] widget.
///
/// Displays its children in a scrollable carousel, either as regular equally
/// sized pages or with weighted widths defined by `flexWeights`.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacCarouselView(
///   carouselType: StacCarouselViewType.weighted,
///   padding: StacEdgeInsets.symmetric(horizontal: 12, vertical: 8),
///   backgroundColor: '#FFFFFF',
///   elevation: 5.0,
///   overlayColor: '#FF0000',
///   itemSnapping: true,
///   shrinkExtent: 0.0,
///   scrollDirection: StacAxis.horizontal,
///   reverse: false,
///   onTap: StacAction(type: 'callback', args: {'name': 'onItemTap'}),
///   enableSplash: true,
///   itemExtent: 300,
///   flexWeights: [1, 7, 1],
///   children: [
///     StacImage(src: 'https://example.com/a.png'),
///     StacImage(src: 'https://example.com/b.png'),
///     StacImage(src: 'https://example.com/c.png'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "carouselView",
///   "carouselType": "weighted",
///   "padding": 12,
///   "backgroundColor": "#FFFFFF",
///   "elevation": 5.0,
///   "overlayColor": "#FF0000",
///   "itemSnapping": true,
///   "shrinkExtent": 0.0,
///   "scrollDirection": "horizontal",
///   "reverse": false,
///   "onTap": {"type": "callback", "name": "onItemTap"},
///   "enableSplash": true,
///   "itemExtent": 300,
///   "flexWeights": [1, 7, 1],
///   "children": [
///     {"type": "image", "src": "https://example.com/a.png"},
///     {"type": "image", "src": "https://example.com/b.png"},
///     {"type": "image", "src": "https://example.com/c.png"}
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [CarouselView documentation](https://api.flutter.dev/flutter/widgets/Carousel-class.html)
@JsonSerializable()
class StacCarouselView extends StacWidget {
  /// Creates a [StacCarouselView] with the given properties.
  const StacCarouselView({
    this.carouselType,
    this.padding,
    this.backgroundColor,
    this.elevation,
    this.overlayColor,
    this.itemSnapping,
    this.shrinkExtent,
    this.scrollDirection,
    this.reverse,
    this.onTap,
    this.enableSplash,
    this.itemExtent,
    this.flexWeights,
    this.children,
  });

  /// The type of the carousel.
  /// Defaults to [StacCarouselViewType.regular].
  final StacCarouselViewType? carouselType;

  /// The amount of space by which to inset the carousel.
  final StacEdgeInsets? padding;

  /// The background color of the carousel.
  final StacColor? backgroundColor;

  /// The z-coordinate at which to place this carousel.
  @DoubleConverter()
  final double? elevation;

  /// The overlay color of the carousel items.
  final StacColor? overlayColor;

  /// Whether the items should snap into place.
  /// Defaults to false.
  final bool? itemSnapping;

  /// The amount by which to shrink the carousel.
  /// Defaults to 0.0.
  @DoubleConverter()
  final double? shrinkExtent;

  /// The axis along which the carousel scrolls.
  /// Defaults to [StacAxis.horizontal].
  final StacAxis? scrollDirection;

  /// Whether the carousel scrolls in the reverse direction.
  /// Defaults to false.
  final bool? reverse;

  /// The callback to invoke when an item is tapped.
  final StacAction? onTap;

  /// Whether to enable splash effect on tap.
  /// Defaults to true.
  final bool? enableSplash;

  /// The extent of each item in the carousel (regular type only).
  @DoubleConverter()
  final double? itemExtent;

  /// The flex weights for the items in the carousel (weighted type only).
  final List<int>? flexWeights;

  /// The widgets below this widget in the tree.
  final List<StacWidget>? children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.carouselView.name;

  /// Creates a [StacCarouselView] from a JSON map.
  factory StacCarouselView.fromJson(Map<String, dynamic> json) =>
      _$StacCarouselViewFromJson(json);

  /// Converts this [StacCarouselView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacCarouselViewToJson(this);
}
