import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac_core/foundation/ui_components/stac_system_ui_overlay_style/stac_system_ui_overlay_style.dart';

part 'stac_app_bar_theme.g.dart';

/// A Stac model representing Flutter's [AppBarTheme].
///
/// Defines the theme for app bars, including colors, elevation, text styles,
/// icon themes, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacAppBarTheme(
///   backgroundColor: '#2196F3',
///   foregroundColor: '#FFFFFF',
///   elevation: 4.0,
///   centerTitle: true,
///   titleTextStyle: StacTextStyle(
///     fontSize: 20.0,
///     fontWeight: 'bold',
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#2196F3",
///   "foregroundColor": "#FFFFFF",
///   "elevation": 4.0,
///   "scrolledUnderElevation": 0.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "centerTitle": true,
///   "titleSpacing": 16.0,
///   "toolbarHeight": 56.0,
///   "leadingWidth": 56.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacAppBarTheme implements StacElement {
  /// Creates a [StacAppBarTheme] with the given properties.
  const StacAppBarTheme({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.iconTheme,
    this.actionsIconTheme,
    this.centerTitle,
    this.titleSpacing,
    this.leadingWidth,
    this.toolbarHeight,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.actionsPadding,
  });

  /// The background color of the app bar.
  final String? backgroundColor;

  /// The default color for [AppBar] icons and text.
  final String? foregroundColor;

  /// The z-coordinate at which to place this app bar relative to its parent.
  final double? elevation;

  /// The z-coordinate at which to place this app bar when it's scrolled under.
  final double? scrolledUnderElevation;

  /// The color of the shadow below the app bar.
  final String? shadowColor;

  /// The color used as an overlay on the app bar's surface color.
  final String? surfaceTintColor;

  /// The shape of the app bar's [Material].
  final StacShapeBorder? shape;

  /// The color, opacity, and size to use for app bar icons.
  final StacIconThemeData? iconTheme;

  /// The color, opacity, and size to use for the app bar's action icons.
  final StacIconThemeData? actionsIconTheme;

  /// Whether the title should be centered.
  final bool? centerTitle;

  /// The spacing around the title content on the app bar.
  final double? titleSpacing;

  /// The width of the leading widget.
  final double? leadingWidth;

  /// The height of the app bar's toolbar.
  final double? toolbarHeight;

  /// The default text style for the app bar's toolbar.
  final StacTextStyle? toolbarTextStyle;

  /// The default text style for the app bar's title.
  final StacTextStyle? titleTextStyle;

  /// The system UI overlay style for the app bar.
  final StacSystemUIOverlayStyle? systemOverlayStyle;

  /// The padding around the action buttons.
  final StacEdgeInsets? actionsPadding;

  /// Creates a [StacAppBarTheme] from JSON.
  factory StacAppBarTheme.fromJson(Map<String, dynamic> json) =>
      _$StacAppBarThemeFromJson(json);

  /// Converts this app bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacAppBarThemeToJson(this);
}
