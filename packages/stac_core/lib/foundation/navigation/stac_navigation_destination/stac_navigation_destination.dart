import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_navigation_destination.g.dart';

/// A Stac model representing Flutter's [NavigationDestination].
///
/// Used as a child of [StacNavigationBar] to define a single
/// destination (icon, optional selected icon, label and tooltip).
///
/// Dart example:
/// ```dart
/// StacNavigationDestination(
///   icon: StacIcon(icon: 'home_outlined'),
///   selectedIcon: StacIcon(icon: 'home'),
///   label: 'Home',
/// )
/// ```
///
/// JSON example:
/// ```json
/// {
///   "icon": {"type": "icon", "icon": "home_outlined"},
///   "selectedIcon": {"type": "icon", "icon": "home"},
///   "label": "Home"
/// }
/// ```
///
/// See also:
///  * Flutter's NavigationDestination docs (`https://api.flutter.dev/flutter/material/NavigationDestination-class.html`)
@JsonSerializable(explicitToJson: true)
class StacNavigationDestination extends StacElement {
  /// Creates a [StacNavigationDestination].
  const StacNavigationDestination({
    required this.icon,
    required this.label,
    this.selectedIcon,
    this.tooltip,
    this.enabled,
  });

  /// The icon shown when this destination is unselected.
  ///
  /// Type: [StacWidget]
  final StacWidget icon;

  /// The text label for this destination.
  ///
  /// Type: [String]
  final String label;

  /// The icon shown when this destination is selected.
  ///
  /// Type: [StacWidget]
  final StacWidget? selectedIcon;

  /// Tooltip text shown on long press.
  ///
  /// Type: [String]
  final String? tooltip;

  /// Whether this destination is enabled. Defaults to `true`.
  ///
  /// Type: [bool]
  final bool? enabled;

  /// Creates a [StacNavigationDestination] from JSON.
  factory StacNavigationDestination.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationDestinationFromJson(json);

  /// Converts this [StacNavigationDestination] to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacNavigationDestinationToJson(this);
}
