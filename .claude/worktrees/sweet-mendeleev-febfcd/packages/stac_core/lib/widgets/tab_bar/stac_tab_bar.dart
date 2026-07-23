import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_tab_bar.g.dart';

/// A Stac model representing Flutter's [TabBar] widget.
///
/// A material design widget that displays a horizontal row of tabs.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTabBar(
///   tabs: [
///     StacTab(text: 'Home'),
///     StacTab(text: 'Profile'),
///   ],
///   isScrollable: false,
///   indicatorWeight: 2.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "tabBar",
///   "tabs": [
///     { "type": "tab", "text": "Home" },
///     { "type": "tab", "text": "Profile" }
///   ],
///   "isScrollable": false,
///   "indicatorWeight": 2.0
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's TabBar documentation (`https://api.flutter.dev/flutter/material/TabBar-class.html`)
@JsonSerializable()
class StacTabBar extends StacWidget {
  /// Creates a [StacTabBar].
  const StacTabBar({
    required this.tabs,
    this.initialIndex,
    this.isScrollable,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment,
    this.indicatorWeight,
    this.indicatorPadding,
    this.indicator,
    this.indicatorSize,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior,
    this.enableFeedback,
    this.physics,
    this.tabAlignment,
    this.dividerColor,
    this.dividerHeight,
  });

  /// The tabs to display.
  final List<StacWidget> tabs;

  /// The initial tab index (used with DefaultTabController).
  final int? initialIndex;

  /// Whether the tab bar can be scrolled horizontally.
  final bool? isScrollable;

  /// Padding for the entire tab bar.
  final StacEdgeInsets? padding;

  /// Color for the tab indicator.
  final StacColor? indicatorColor;

  /// Whether to adjust indicator color automatically based on label colors.
  final bool? automaticIndicatorColorAdjustment;

  /// Thickness of the tab indicator in logical pixels.
  @DoubleConverter()
  final double? indicatorWeight;

  /// Padding for the tab indicator.
  final StacEdgeInsets? indicatorPadding;

  /// A custom decoration for the tab indicator.
  final StacBoxDecoration? indicator;

  /// How the indicator's size is computed.
  final StacTabBarIndicatorSize? indicatorSize;

  /// Color of selected tab labels.
  final StacColor? labelColor;

  /// Text style of selected tab labels.
  final StacTextStyle? labelStyle;

  /// Padding added to each label.
  final StacEdgeInsets? labelPadding;

  /// Color of unselected tab labels.
  final StacColor? unselectedLabelColor;

  /// Text style of unselected tab labels.
  final StacTextStyle? unselectedLabelStyle;

  /// Drag start behavior for drag gestures.
  final StacDragStartBehavior? dragStartBehavior;

  /// Whether tapping tabs should include feedback.
  final bool? enableFeedback;

  /// Scroll physics for the tab bar.
  final StacScrollPhysics? physics;

  /// How the tabs should be aligned.
  final StacTabAlignment? tabAlignment;

  /// Divider color drawn below the tab bar (Material 3).
  final StacColor? dividerColor;

  /// Divider height drawn below the tab bar (Material 3).
  @DoubleConverter()
  final double? dividerHeight;

  /// Widget type identifier.
  @override
  String get type => WidgetType.tabBar.name;

  /// Creates a [StacTabBar] from a JSON map.
  factory StacTabBar.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarFromJson(json);

  /// Converts this [StacTabBar] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacTabBarToJson(this);
}
