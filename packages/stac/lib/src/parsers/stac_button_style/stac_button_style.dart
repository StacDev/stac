import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_border_side/stac_border_side.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/stac_rounded_rectangle_border/stac_rounded_rectangle_border.dart';
import 'package:stac/src/parsers/stac_size/stac_size.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_button_style.freezed.dart';
part 'stac_button_style.g.dart';

@freezed
abstract class StacButtonStyle with _$StacButtonStyle {
  const factory StacButtonStyle({
    String? foregroundColor,
    String? backgroundColor,
    String? disabledForegroundColor,
    String? disabledBackgroundColor,
    String? shadowColor,
    String? surfaceTintColor,
    String? iconColor,
    String? disabledIconColor,
    double? elevation,
    StacTextStyle? textStyle,
    StacEdgeInsets? padding,
    StacSize? minimumSize,
    StacSize? fixedSize,
    StacSize? maximumSize,
    StacBorderSide? side,
    StacRoundedRectangleBorder? shape,
    bool? enableFeedback,
    double? iconSize,
  }) = _StacButtonStyle;

  factory StacButtonStyle.fromJson(Map<String, dynamic> json) =>
      _$StacButtonStyleFromJson(json);
}

extension StacButtonStyleParser on StacButtonStyle {
  ButtonStyle parseElevated(BuildContext context) {
    return ElevatedButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      disabledForegroundColor: disabledForegroundColor.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      enableFeedback: enableFeedback,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      shape: shape.parse(context),
      padding: padding.parse,
    );
  }

  ButtonStyle parseText(BuildContext context) {
    return TextButton.styleFrom(
      foregroundColor: foregroundColor.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      disabledForegroundColor: disabledForegroundColor.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      iconColor: iconColor.toColor(context),
      disabledIconColor: disabledIconColor.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      enableFeedback: enableFeedback,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      shape: shape.parse(context),
      padding: padding.parse,
    );
  }

  ButtonStyle parseOutlined(BuildContext context) {
    return OutlinedButton.styleFrom(
      foregroundColor: foregroundColor.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      disabledForegroundColor: disabledForegroundColor.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      enableFeedback: enableFeedback,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      side: side.parse(context),
      shape: shape.parse(context),
      padding: padding.parse,
    );
  }

  ButtonStyle parseIcon(BuildContext context) {
    return IconButton.styleFrom(
      foregroundColor: foregroundColor.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      disabledForegroundColor: disabledForegroundColor.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      elevation: elevation,
      enableFeedback: enableFeedback,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      shape: shape.parse(context),
      padding: padding.parse,
      iconSize: iconSize,
    );
  }

  ButtonStyle parseFilledButton(BuildContext context) {
    return FilledButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      disabledForegroundColor: disabledForegroundColor.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      enableFeedback: enableFeedback,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      shape: shape.parse(context),
      padding: padding.parse,
    );
  }
}
