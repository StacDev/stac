import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/alignment/stac_alignment_geometry/stac_alignment_geometry.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_dialog_theme.g.dart';

/// A Stac model representing Flutter's [DialogTheme].
///
/// Defines the theme for dialogs, including colors, elevation, shape, alignment,
/// and text styles.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDialogTheme(
///   backgroundColor: '#FFFFFF',
///   elevation: 24.0,
///   titleTextStyle: StacTextStyle(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#FFFFFF",
///   "elevation": 24.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "alignment": {...},
///   "iconColor": "#2196F3"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacDialogTheme implements StacElement {
  /// Creates a [StacDialogTheme] with the given properties.
  const StacDialogTheme({
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.alignment,
    this.titleTextStyle,
    this.contentTextStyle,
    this.actionsPadding,
    this.iconColor,
  });

  /// The background color of the dialog.
  final String? backgroundColor;

  /// The z-coordinate at which to place this dialog relative to its parent.
  final double? elevation;

  /// The color of the shadow below the dialog.
  final String? shadowColor;

  /// The color used to tint the surface of this dialog.
  final String? surfaceTintColor;

  /// The shape of the dialog's border.
  final StacBorder? shape;

  /// The alignment of the dialog.
  final StacAlignmentGeometry? alignment;

  /// The text style for the dialog's title.
  final StacTextStyle? titleTextStyle;

  /// The text style for the dialog's content.
  final StacTextStyle? contentTextStyle;

  /// The padding around the dialog's action buttons.
  final StacEdgeInsets? actionsPadding;

  /// The color of the dialog's icon.
  final String? iconColor;

  /// Creates a [StacDialogTheme] from JSON.
  factory StacDialogTheme.fromJson(Map<String, dynamic> json) =>
      _$StacDialogThemeFromJson(json);

  /// Converts this dialog theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacDialogThemeToJson(this);
}
