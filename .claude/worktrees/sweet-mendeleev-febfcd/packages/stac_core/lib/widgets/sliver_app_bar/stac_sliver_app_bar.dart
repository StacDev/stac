import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_sliver_app_bar.g.dart';

/// A Stac model representing Flutter's [SliverAppBar] widget.
///
/// A material design app bar that integrates with a `CustomScrollView`.
/// It can expand, collapse, pin, float, and snap as the user scrolls.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverAppBar(
///   title: StacText(data: 'Gallery'),
///   pinned: true,
///   expandedHeight: 200,
///   flexibleSpace: StacContainer(color: 'blue', child: StacText(data: 'Header')),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverAppBar",
///   "title": {"type": "text", "data": "Gallery"},
///   "pinned": true,
///   "expandedHeight": 200,
///   "flexibleSpace": {"type": "container", "color": "blue", "child": {"type": "text", "data": "Header"}}
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverAppBar documentation](https://api.flutter.dev/flutter/material/SliverAppBar-class.html)
@JsonSerializable()
class StacSliverAppBar extends StacWidget {
  /// Creates a [StacSliverAppBar] with the given properties.
  const StacSliverAppBar({
    this.leading,
    this.automaticallyImplyLeading,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.forceElevated,
    this.backgroundColor,
    this.foregroundColor,
    this.primary,
    this.centerTitle,
    this.excludeHeaderSemantics,
    this.titleSpacing,
    this.collapsedHeight,
    this.expandedHeight,
    this.floating,
    this.pinned,
    this.snap,
    this.stretch,
    this.stretchTriggerOffset,
    this.shape,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.forceMaterialTransparency,
    this.clipBehavior,
    this.actionsPadding,
  });

  /// Widget displayed before the [title].
  final StacWidget? leading;

  /// Whether to imply a leading widget if [leading] is null.
  final bool? automaticallyImplyLeading;

  /// Primary widget displayed in the app bar.
  final StacWidget? title;

  /// Widgets displayed after the [title].
  final List<StacWidget>? actions;

  /// Widget stacked behind the toolbar and tab bar.
  final StacWidget? flexibleSpace;

  /// Widget displayed across the bottom of the app bar (e.g., a TabBar).
  final StacWidget? bottom;

  /// Z-coordinate at which to place the app bar.
  @DoubleConverter()
  final double? elevation;

  /// Elevation when content is scrolled under the app bar.
  @DoubleConverter()
  final double? scrolledUnderElevation;

  /// Color of the shadow below the app bar.
  final StacColor? shadowColor;

  /// Color of the surface tint overlay applied to the background color.
  final StacColor? surfaceTintColor;

  /// Whether to show the shadow appropriate for the elevation even if the
  /// content is not scrolled under the app bar.
  final bool? forceElevated;

  /// Fill color for the app bar's material.
  final StacColor? backgroundColor;

  /// Default color for text and icons within the app bar.
  final StacColor? foregroundColor;

  /// Whether this app bar is part of the primary scroll view.
  final bool? primary;

  /// Whether the [title] should be centered.
  final bool? centerTitle;

  /// Whether the [title] should be wrapped with header semantics.
  final bool? excludeHeaderSemantics;

  /// Spacing around the [title] on the horizontal axis.
  @DoubleConverter()
  final double? titleSpacing;

  /// Height of the app bar when collapsed.
  @DoubleConverter()
  final double? collapsedHeight;

  /// Height of the app bar when fully expanded.
  @DoubleConverter()
  final double? expandedHeight;

  /// Whether the app bar becomes visible as soon as the user scrolls towards it.
  final bool? floating;

  /// Whether the app bar remains visible at the start of the scroll view.
  final bool? pinned;

  /// If true, the floating app bar will snap into view.
  final bool? snap;

  /// Whether the app bar should stretch to fill the over-scroll area.
  final bool? stretch;

  /// Offset of overscroll required to activate [onStretchTrigger].
  @DoubleConverter()
  final double? stretchTriggerOffset;

  /// Shape of the app bar's material and its shadow.
  final StacShapeBorder? shape;

  /// Height of the toolbar component.
  @DoubleConverter()
  final double? toolbarHeight;

  /// Width for the [leading] widget.
  @DoubleConverter()
  final double? leadingWidth;

  /// Default text style for the app bar's leading and actions widgets.
  final StacTextStyle? toolbarTextStyle;

  /// Default text style for the app bar's [title] widget.
  final StacTextStyle? titleTextStyle;

  /// Style for the system overlays (e.g., status bar).
  final StacSystemUIOverlayStyle? systemOverlayStyle;

  /// Forces the app bar's material widget type to be MaterialType.transparency.
  final bool? forceMaterialTransparency;

  /// Content clipping behavior.
  final StacClip? clipBehavior;

  /// Padding between the [actions] and the end of the app bar.
  final StacEdgeInsets? actionsPadding;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverAppBar.name;

  /// Creates a [StacSliverAppBar] from a JSON map.
  factory StacSliverAppBar.fromJson(Map<String, dynamic> json) =>
      _$StacSliverAppBarFromJson(json);

  /// Converts this [StacSliverAppBar] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSliverAppBarToJson(this);
}
