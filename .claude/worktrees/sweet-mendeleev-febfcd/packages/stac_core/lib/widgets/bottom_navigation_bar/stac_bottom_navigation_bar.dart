import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_bottom_navigation_bar.g.dart';

/// A Stac model representing Flutter's [BottomNavigationBar].
///
/// Displays a horizontal bar of navigation items at the bottom of the app.
/// Use with a controller to handle selection.
///
/// Dart example:
/// ```dart
/// StacBottomNavigationBar(
///   items: [
///     StacBottomNavigationBarItem(icon: StacIcon(icon: 'home'), label: 'Home'),
///     StacBottomNavigationBarItem(icon: StacIcon(icon: 'settings'), label: 'Settings'),
///   ],
/// )
/// ```
///
/// JSON example:
/// ```json
/// {
///   "type": "bottomNavigationBar",
///   "items": [
///     {"icon": {"type": "icon", "icon": "home"}, "label": "Home"},
///     {"icon": {"type": "icon", "icon": "settings"}, "label": "Settings"}
///   ]
/// }
///
/// See also:
///  * Flutter's BottomNavigationBar docs (`https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html`)
/// ```
@JsonSerializable(explicitToJson: true)
class StacBottomNavigationBar extends StacWidget {
  /// Creates a bottom navigation bar widget with the specified properties.
  const StacBottomNavigationBar({
    required this.items,
    this.elevation,
    this.barType,
    this.fixedColor,
    this.backgroundColor,
    this.iconSize,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.selectedFontSize,
    this.unselectedFontSize,
    this.selectedLabelStyle,
    this.unselectedLabelStyle,
    this.showSelectedLabels,
    this.showUnselectedLabels,
    this.enableFeedback,
    this.landscapeLayout,
  });

  /// The items to display in the bottom navigation bar.
  ///
  /// Type: [StacBottomNavigationBarItem]
  final List<StacBottomNavigationBarItem> items;

  /// The z-coordinate at which to place this bottom navigation bar.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? elevation;

  /// The visual layout type of the bottom navigation bar.
  ///
  /// Type: [StacBottomNavigationBarType]
  final StacBottomNavigationBarType? barType;

  /// The color of the selected item when using the fixed type.
  ///
  /// Type: [String] (hex color)
  final String? fixedColor;

  /// The background color of the bottom navigation bar.
  ///
  /// Type: [String] (hex color)
  final String? backgroundColor;

  /// The size of the icons in the bottom navigation bar.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? iconSize;

  /// The color of the selected item.
  ///
  /// Type: [String] (hex color)
  final String? selectedItemColor;

  /// The color of the unselected items.
  ///
  /// Type: [String] (hex color)
  final String? unselectedItemColor;

  /// The font size of the selected item label.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? selectedFontSize;

  /// The font size of the unselected item labels.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? unselectedFontSize;

  /// The text style for the selected item label.
  ///
  /// Type: [StacTextStyle]
  final StacTextStyle? selectedLabelStyle;

  /// The text style for the unselected item labels.
  ///
  /// Type: [StacTextStyle]
  final StacTextStyle? unselectedLabelStyle;

  /// Whether to show the selected item labels.
  ///
  /// Type: [bool]
  final bool? showSelectedLabels;

  /// Whether to show the unselected item labels.
  ///
  /// Type: [bool]
  final bool? showUnselectedLabels;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  ///
  /// Type: [bool]
  final bool? enableFeedback;

  /// The layout to use when in landscape orientation.
  ///
  /// Type: [StacBottomNavigationBarLandscapeLayout]
  final StacBottomNavigationBarLandscapeLayout? landscapeLayout;

  /// Widget type identifier.
  @override
  String get type => WidgetType.bottomNavigationBar.name;

  /// Creates a [StacBottomNavigationBar] from a JSON map.
  factory StacBottomNavigationBar.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavigationBarFromJson(json);

  /// Converts this [StacBottomNavigationBar] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacBottomNavigationBarToJson(this);
}
