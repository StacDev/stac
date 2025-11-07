import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/effects/stac_shadow/stac_shadow.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/geometry/stac_visual_density/stac_visual_density.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/ui_components/stac_list_tile_style.dart';
import 'package:stac_core/foundation/ui_components/stac_list_tile_title_alignment.dart';

part 'stac_list_tile_theme_data.g.dart';

/// A Stac model representing Flutter's [ListTileThemeData].
///
/// Defines the theme for list tiles, including colors, text styles, layout,
/// and visual properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacListTileThemeData(
///   tileColor: '#FFFFFF',
///   selectedTileColor: '#E3F2FD',
///   dense: false,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "tileColor": "#FFFFFF",
///   "selectedTileColor": "#E3F2FD",
///   "dense": false,
///   "style": "list",
///   "iconColor": "#757575",
///   "textColor": "#212121"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacListTileThemeData implements StacElement {
  /// Creates a [StacListTileThemeData] with the given properties.
  const StacListTileThemeData({
    this.dense,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.leadingAndTrailingTextStyle,
    this.contentPadding,
    this.tileColor,
    this.selectedTileColor,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.enableFeedback,
    this.visualDensity,
    this.titleAlignment,
    this.shadows,
  });

  /// Whether to use a more compact layout for the list tile.
  final bool? dense;

  /// The shape of the list tile's border.
  final StacBorder? shape;

  /// The style of the list tile.
  final StacListTileStyle? style;

  /// The color to use for selected list tiles.
  final String? selectedColor;

  /// The color to use for list tile icons.
  final String? iconColor;

  /// The color to use for list tile text.
  final String? textColor;

  /// The text style for the list tile's title.
  final StacTextStyle? titleTextStyle;

  /// The text style for the list tile's subtitle.
  final StacTextStyle? subtitleTextStyle;

  /// The text style for leading and trailing widgets.
  final StacTextStyle? leadingAndTrailingTextStyle;

  /// The padding around the list tile's content.
  final StacEdgeInsets? contentPadding;

  /// The background color of the list tile.
  final String? tileColor;

  /// The background color of the selected list tile.
  final String? selectedTileColor;

  /// The horizontal gap between the leading widget and the title.
  final double? horizontalTitleGap;

  /// The minimum vertical padding for the list tile.
  final double? minVerticalPadding;

  /// The minimum width for the leading widget.
  final double? minLeadingWidth;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// The visual density of the list tile.
  final StacVisualDensity? visualDensity;

  /// The alignment of the list tile's title.
  final StacListTileTitleAlignment? titleAlignment;

  /// The list of shadows to apply to the list tile.
  final List<StacShadow>? shadows;

  /// Creates a [StacListTileThemeData] from JSON.
  factory StacListTileThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacListTileThemeDataFromJson(json);

  /// Converts this list tile theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacListTileThemeDataToJson(this);
}
