import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/alignment/stac_alignment_geometry/stac_alignment_geometry.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/geometry/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/layout/stac_clip.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_dialog_theme_data.g.dart';

/// A Stac model representing Flutter's [DialogThemeData].
///
/// Defines the theme for dialogs.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDialogThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 24.0,
///   shape: StacBorder(...),
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
///   "surfaceTintColor": "#FF0000",
///   "alignment": {...},
///   "iconColor": "#2196F3",
///   "barrierColor": "#80000000",
///   "insetPadding": {...},
///   "clipBehavior": "antiAlias"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacDialogThemeData implements StacElement {
  /// Creates a [StacDialogThemeData] with the given properties.
  const StacDialogThemeData({
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.alignment,
    this.iconColor,
    this.titleTextStyle,
    this.contentTextStyle,
    this.actionsPadding,
    this.barrierColor,
    this.insetPadding,
    this.clipBehavior,
    this.constraints,
  });

  /// Overrides the default value for [Dialog.backgroundColor].
  final String? backgroundColor;

  /// Overrides the default value for [Dialog.elevation].
  final double? elevation;

  /// Overrides the default value for [Dialog.shadowColor].
  final String? shadowColor;

  /// Overrides the default value for [Dialog.surfaceTintColor].
  final String? surfaceTintColor;

  /// Overrides the default value for [Dialog.shape].
  final StacBorder? shape;

  /// Overrides the default value for [Dialog.alignment].
  final StacAlignmentGeometry? alignment;

  /// Used to configure the [IconTheme] for the [AlertDialog.icon] widget.
  final String? iconColor;

  /// Overrides the default value for [DefaultTextStyle] for [SimpleDialog.title] and
  /// [AlertDialog.title].
  final StacTextStyle? titleTextStyle;

  /// Overrides the default value for [DefaultTextStyle] for [SimpleDialog.children] and
  /// [AlertDialog.content].
  final StacTextStyle? contentTextStyle;

  /// Overrides the default value for [AlertDialog.actionsPadding].
  final StacEdgeInsets? actionsPadding;

  /// Overrides the default value for [barrierColor] in [showDialog].
  final String? barrierColor;

  /// Overrides the default value for [Dialog.insetPadding].
  final StacEdgeInsets? insetPadding;

  /// Overrides the default value of [Dialog.clipBehavior].
  final StacClip? clipBehavior;

  /// Constrains the size of the [Dialog].
  ///
  /// If null, the dialog's size will be unconstrained.
  final StacBoxConstraints? constraints;

  /// Creates a [StacDialogThemeData] from JSON.
  factory StacDialogThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDialogThemeDataFromJson(json);

  /// Converts this dialog theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacDialogThemeDataToJson(this);
}
