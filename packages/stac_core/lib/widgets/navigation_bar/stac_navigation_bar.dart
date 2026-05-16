import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_navigation_bar.g.dart';

/// A Stac model representing Flutter's Material 3 [NavigationBar].
///
/// Displays a horizontal bar of [StacNavigationDestination]s, typically
/// placed in [StacScaffold]'s `bottomNavigationBar` slot. Pair with a
/// [StacDefaultNavigationController] to drive selection state.
///
/// Dart example:
/// ```dart
/// StacNavigationBar(
///   destinations: [
///     StacNavigationDestination(
///       icon: StacIcon(icon: 'home_outlined'),
///       selectedIcon: StacIcon(icon: 'home'),
///       label: 'Home',
///     ),
///     StacNavigationDestination(
///       icon: StacIcon(icon: 'settings_outlined'),
///       selectedIcon: StacIcon(icon: 'settings'),
///       label: 'Settings',
///     ),
///   ],
/// )
/// ```
///
/// JSON example:
/// ```json
/// {
///   "type": "navigationBar",
///   "destinations": [
///     {
///       "icon": {"type": "icon", "icon": "home_outlined"},
///       "selectedIcon": {"type": "icon", "icon": "home"},
///       "label": "Home"
///     },
///     {
///       "icon": {"type": "icon", "icon": "settings_outlined"},
///       "selectedIcon": {"type": "icon", "icon": "settings"},
///       "label": "Settings"
///     }
///   ]
/// }
/// ```
///
/// See also:
///  * Flutter's NavigationBar docs (`https://api.flutter.dev/flutter/material/NavigationBar-class.html`)
@JsonSerializable(explicitToJson: true)
class StacNavigationBar extends StacWidget {
  /// Creates a navigation bar with the specified properties.
  const StacNavigationBar({
    required this.destinations,
    this.animationDuration,
    this.selectedIndex,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.indicatorColor,
    this.indicatorShape,
    this.height,
    this.labelBehavior,
    this.labelTextStyle,
    this.labelPadding,
    this.maintainBottomViewPadding,
  });

  /// The destinations shown in the navigation bar.
  ///
  /// Type: [StacNavigationDestination]
  final List<StacNavigationDestination> destinations;

  /// Transition time for each destination as it goes between selected
  /// and unselected.
  ///
  /// Type: [StacDuration]
  final StacDuration? animationDuration;

  /// The initial selected destination index. Ignored when a
  /// [StacDefaultNavigationController] is provided.
  ///
  /// Type: [int]
  final int? selectedIndex;

  /// The color of the [NavigationBar] itself.
  ///
  /// Type: [String] (hex color)
  final String? backgroundColor;

  /// The elevation of the navigation bar.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? elevation;

  /// The color used for the drop shadow to indicate elevation.
  ///
  /// Type: [String] (hex color)
  final String? shadowColor;

  /// The color used as an overlay on [backgroundColor] to indicate
  /// elevation.
  ///
  /// Type: [String] (hex color)
  final String? surfaceTintColor;

  /// The color of the selected destination's indicator.
  ///
  /// Type: [String] (hex color)
  final String? indicatorColor;

  /// The shape of the selected destination's indicator.
  ///
  /// Type: [StacBorder]
  final StacBorder? indicatorShape;

  /// The height of the navigation bar.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? height;

  /// Defines how destination labels are laid out and when they are
  /// displayed.
  ///
  /// Type: [StacNavigationDestinationLabelBehavior]
  final StacNavigationDestinationLabelBehavior? labelBehavior;

  /// The text style for destination labels.
  ///
  /// Type: [StacTextStyle]
  final StacTextStyle? labelTextStyle;

  /// The padding around each destination's label widget.
  ///
  /// Type: [StacEdgeInsets]
  final StacEdgeInsets? labelPadding;

  /// Whether the underlying [SafeArea] should maintain the bottom
  /// `viewPadding` instead of the bottom `padding`.
  ///
  /// Type: [bool]
  final bool? maintainBottomViewPadding;

  /// Widget type identifier.
  @override
  String get type => WidgetType.navigationBar.name;

  /// Creates a [StacNavigationBar] from a JSON map.
  factory StacNavigationBar.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationBarFromJson(json);

  /// Converts this [StacNavigationBar] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacNavigationBarToJson(this);
}
