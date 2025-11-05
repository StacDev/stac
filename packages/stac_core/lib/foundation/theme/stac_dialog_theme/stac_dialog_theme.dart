import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/alignment/stac_alignment_geometry/stac_alignment_geometry.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_dialog_theme.g.dart';

/// A Stac model representing Flutter's [DialogTheme].
///
/// Defines the theme for dialogs.
@JsonSerializable()
class StacDialogTheme implements StacElement {
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

  final String? backgroundColor;
  final double? elevation;
  final String? shadowColor;
  final String? surfaceTintColor;
  final StacBorder? shape;
  final StacAlignmentGeometry? alignment;
  final StacTextStyle? titleTextStyle;
  final StacTextStyle? contentTextStyle;
  final StacEdgeInsets? actionsPadding;
  final String? iconColor;

  factory StacDialogTheme.fromJson(Map<String, dynamic> json) =>
      _$StacDialogThemeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacDialogThemeToJson(this);
}

