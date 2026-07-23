import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_bottom_navigation_bar_item.g.dart';

/// Enum mirroring Flutter's [BottomNavigationBarType].
///
/// - [fixed]: "Fixed" type where items are fixed in place.
/// - [shifting]: "Shifting" type where the selected item is emphasized and items can shift.
enum StacBottomNavigationBarType {
  /// Items are fixed in place and share equal space.
  fixed,

  /// The selected item is emphasized and items can shift position/size.
  shifting,
}

/// Enum mirroring Flutter's [BottomNavigationBarLandscapeLayout].
///
/// - [spread]: Items are spread across available width.
/// - [centered]: Items are centered.
/// - [linear]: Items are laid out linearly.
enum StacBottomNavigationBarLandscapeLayout {
  /// Spread items across the available width.
  spread,

  /// Center items within the available width.
  centered,

  /// Lay out items linearly without spreading.
  linear,
}

/// A Stac model representing a Flutter [BottomNavigationBarItem].
///
/// Each item config consists of an icon, a label, and optional variants.
///
/// See also:
///  * Flutter's BottomNavigationBarItem docs (`https://api.flutter.dev/flutter/widgets/BottomNavigationBarItem-class.html`)
@JsonSerializable(explicitToJson: true)
class StacBottomNavigationBarItem extends StacElement {
  /// Creates a [StacBottomNavigationBarItem].
  const StacBottomNavigationBarItem({
    required this.icon,
    required this.label,
    this.activeIcon,
    this.backgroundColor,
    this.tooltip,
  });

  /// The default icon widget.
  final StacWidget icon;

  /// The text label.
  final String label;

  /// The icon shown when this item is active.
  final StacWidget? activeIcon;

  /// Background color when this item is active.
  final String? backgroundColor;

  /// Tooltip text for long-press.
  final String? tooltip;

  /// Creates a [StacBottomNavigationBarItem] from JSON.
  factory StacBottomNavigationBarItem.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavigationBarItemFromJson(json);

  /// Converts this [StacBottomNavigationBarItem] to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacBottomNavigationBarItemToJson(this);
}
