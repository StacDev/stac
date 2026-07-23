import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/colors/stac_brightness.dart';

part 'stac_system_ui_overlay_style.g.dart';

/// A Stac representation of system UI overlay styling.
///
/// This class defines the appearance of system UI elements like the
/// status bar and navigation bar, including colors and brightness settings.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacSystemUIOverlayStyle(
///   statusBarColor: '#000000',
///   statusBarIconBrightness: StacBrightness.light,
///   systemNavigationBarColor: '#FFFFFF',
///   systemNavigationBarIconBrightness: StacBrightness.dark,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "statusBarColor": "#000000",
///   "statusBarIconBrightness": "light",
///   "systemNavigationBarColor": "#FFFFFF",
///   "systemNavigationBarIconBrightness": "dark"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacSystemUIOverlayStyle extends StacElement {
  /// Creates a system UI overlay style with the specified properties.
  StacSystemUIOverlayStyle({
    this.systemNavigationBarColor,
    this.systemNavigationBarDividerColor,
    this.systemNavigationBarIconBrightness,
    this.systemNavigationBarContrastEnforced,
    this.statusBarColor,
    this.statusBarBrightness,
    this.statusBarIconBrightness,
    this.systemStatusBarContrastEnforced,
  });

  /// The color of the system navigation bar.
  final String? systemNavigationBarColor;

  /// The color of the divider between the navigation bar and content.
  final String? systemNavigationBarDividerColor;

  /// The brightness of icons in the system navigation bar.
  final StacBrightness? systemNavigationBarIconBrightness;

  /// Whether contrast enforcement is enabled for the navigation bar.
  final bool? systemNavigationBarContrastEnforced;

  /// The color of the status bar.
  final String? statusBarColor;

  /// The brightness of the status bar background.
  final StacBrightness? statusBarBrightness;

  /// The brightness of icons in the status bar.
  final StacBrightness? statusBarIconBrightness;

  /// Whether contrast enforcement is enabled for the status bar.
  final bool? systemStatusBarContrastEnforced;

  /// Creates a [StacSystemUIOverlayStyle] from a JSON map.
  factory StacSystemUIOverlayStyle.fromJson(Map<String, dynamic> json) =>
      _$StacSystemUIOverlayStyleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSystemUIOverlayStyleToJson(this);
}
