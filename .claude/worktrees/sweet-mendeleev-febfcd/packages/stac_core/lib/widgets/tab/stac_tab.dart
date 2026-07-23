import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_tab.g.dart';

/// A Stac model representing Flutter's [Tab] widget.
///
/// A material design tab that can display text, an icon, or both.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTab(
///   text: 'Home',
///   icon: StacIcon(icon: 'home'),
///   iconMargin: StacEdgeInsets.symmetric(horizontal: 16),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "tab",
///   "text": "Home",
///   "icon": { "type": "icon", "icon": "home" },
///   "iconMargin": { "type": "symmetric", "horizontal": 16 }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Tab documentation (`https://api.flutter.dev/flutter/material/Tab-class.html`)
@JsonSerializable()
class StacTab extends StacWidget {
  /// Creates a [StacTab].
  const StacTab({
    this.text,
    this.icon,
    this.iconMargin,
    this.height,
    this.child,
  });

  /// The text to display on the tab.
  final String? text;

  /// The icon widget to display on the tab.
  final StacWidget? icon;

  /// The margin around the icon in the tab.
  final StacEdgeInsets? iconMargin;

  /// The height of the tab.
  @DoubleConverter()
  final double? height;

  /// A custom child widget for the tab content.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.tab.name;

  /// Creates a [StacTab] from a JSON map.
  factory StacTab.fromJson(Map<String, dynamic> json) =>
      _$StacTabFromJson(json);

  /// Converts this [StacTab] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacTabToJson(this);
}
