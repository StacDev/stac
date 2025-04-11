import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_alignment_geometry/stac_alignment_geometry.dart';
import 'package:stac/src/parsers/stac_border/stac_border.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_dialog_theme.freezed.dart';
part 'stac_dialog_theme.g.dart';

@freezed
abstract class StacDialogTheme with _$StacDialogTheme {
  const factory StacDialogTheme({
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    StacBorder? shape,
    StacAlignmentGeometry? alignment,
    StacTextStyle? titleTextStyle,
    StacTextStyle? contentTextStyle,
    StacEdgeInsets? actionsPadding,
    String? iconColor,
  }) = _StacDialogTheme;

  factory StacDialogTheme.fromJson(Map<String, dynamic> json) =>
      _$StacDialogThemeFromJson(json);
}

extension StacDialogThemeParser on StacDialogTheme {
  DialogTheme? parse(BuildContext context) {
    return DialogTheme(
      backgroundColor: backgroundColor.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      shape: shape?.parse(context),
      alignment: alignment?.parse,
      titleTextStyle: titleTextStyle?.parse(context),
      contentTextStyle: contentTextStyle?.parse(context),
      actionsPadding: actionsPadding.parse,
      iconColor: iconColor.toColor(context),
    );
  }
}
