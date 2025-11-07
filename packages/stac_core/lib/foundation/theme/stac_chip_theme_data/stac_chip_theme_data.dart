import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/colors/stac_brightness.dart';
import 'package:stac_core/foundation/geometry/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';

part 'stac_chip_theme_data.g.dart';

/// A Stac model representing Flutter's [ChipThemeData].
///
/// Defines the theme for chips, including colors, elevation, shape, text styles,
/// icon themes, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacChipThemeData(
///   backgroundColor: '#E3F2FD',
///   labelStyle: StacTextStyle(color: '#1976D2'),
///   elevation: 0.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#E3F2FD",
///   "labelStyle": {"color": "#1976D2"},
///   "elevation": 0.0,
///   "pressElevation": 2.0,
///   "showCheckmark": true,
///   "checkmarkColor": "#1976D2"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacChipThemeData implements StacElement {
  /// Creates a [StacChipThemeData] with the given properties.
  const StacChipThemeData({
    this.color,
    this.backgroundColor,
    this.deleteIconColor,
    this.disabledColor,
    this.selectedColor,
    this.secondarySelectedColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.selectedShadowColor,
    this.showCheckmark,
    this.checkmarkColor,
    this.labelPadding,
    this.padding,
    this.side,
    this.shape,
    this.labelStyle,
    this.secondaryLabelStyle,
    this.brightness,
    this.elevation,
    this.pressElevation,
    this.iconTheme,
    this.avatarBoxConstraints,
    this.deleteIconBoxConstraints,
  });

  /// The default color for chip content.
  final String? color;

  /// The background color of the chip.
  final String? backgroundColor;

  /// The color of the delete icon.
  final String? deleteIconColor;

  /// The color to use for disabled chips.
  final String? disabledColor;

  /// The color to use for selected chips.
  final String? selectedColor;

  /// The color to use for secondary selected chips.
  final String? secondarySelectedColor;

  /// The color of the chip's shadow.
  final String? shadowColor;

  /// The color used to tint the surface of this chip.
  final String? surfaceTintColor;

  /// The color of the shadow for selected chips.
  final String? selectedShadowColor;

  /// Whether to show a checkmark for selected chips.
  final bool? showCheckmark;

  /// The color of the checkmark.
  final String? checkmarkColor;

  /// The padding around the chip's label.
  final StacEdgeInsets? labelPadding;

  /// The internal padding for the chip's content.
  final StacEdgeInsets? padding;

  /// The border side of the chip.
  final StacBorderSide? side;

  /// The shape of the chip's border.
  final StacShapeBorder? shape;

  /// The text style for the chip's label.
  final StacTextStyle? labelStyle;

  /// The text style for secondary chip labels.
  final StacTextStyle? secondaryLabelStyle;

  /// The brightness of the chip theme.
  final StacBrightness? brightness;

  /// The z-coordinate at which to place this chip relative to its parent.
  final double? elevation;

  /// The z-coordinate at which to place this chip when pressed.
  final double? pressElevation;

  /// The icon theme for chip icons.
  final StacIconThemeData? iconTheme;

  /// Constraints on the size of chip avatars.
  final StacBoxConstraints? avatarBoxConstraints;

  /// Constraints on the size of the delete icon.
  final StacBoxConstraints? deleteIconBoxConstraints;

  /// Creates a [StacChipThemeData] from JSON.
  factory StacChipThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacChipThemeDataFromJson(json);

  /// Converts this chip theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacChipThemeDataToJson(this);
}
