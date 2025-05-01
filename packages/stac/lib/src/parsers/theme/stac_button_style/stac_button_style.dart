import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_alignment_geometry/stac_alignment_geometry.dart';
import 'package:stac/src/parsers/widgets/stac_border_side/stac_border_side.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_mouse_cursor/stac_mouse_cursor.dart';
import 'package:stac/src/parsers/widgets/stac_rounded_rectangle_border/stac_rounded_rectangle_border.dart';
import 'package:stac/src/parsers/widgets/stac_size/stac_size.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/parsers/widgets/stac_visual_density/stac_visual_density.dart';
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
    double? iconSize,
    IconAlignment? iconAlignment,
    String? disabledIconColor,
    String? overlayColor,
    double? elevation,
    StacTextStyle? textStyle,
    StacEdgeInsets? padding,
    StacSize? minimumSize,
    StacSize? fixedSize,
    StacSize? maximumSize,
    StacBorderSide? side,
    StacRoundedRectangleBorder? shape,
    StacMouseCursor? enabledMouseCursor,
    StacMouseCursor? disabledMouseCursor,
    StacVisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool? enableFeedback,
    StacAlignmentGeometry? alignment,
  }) = _StacButtonStyle;

  factory StacButtonStyle.fromJson(Map<String, dynamic> json) =>
      _$StacButtonStyleFromJson(json);
}

extension StacButtonStyleParser on StacButtonStyle {
  ButtonStyle parseElevatedButton(BuildContext context) {
    return ElevatedButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledForegroundColor: disabledForegroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      iconColor: iconColor?.toColor(context),
      iconSize: iconSize,
      iconAlignment: iconAlignment,
      disabledIconColor: disabledIconColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      padding: padding?.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      side: side?.parse(context),
      shape: shape?.parse(context),
      enabledMouseCursor: enabledMouseCursor?.value,
      disabledMouseCursor: disabledMouseCursor?.value,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize,
      animationDuration: animationDuration,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }

  ButtonStyle parseTextButton(BuildContext context) {
    return TextButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledForegroundColor: disabledForegroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      iconColor: iconColor?.toColor(context),
      iconSize: iconSize,
      iconAlignment: iconAlignment,
      disabledIconColor: disabledIconColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      padding: padding.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      side: side.parse(context),
      shape: shape?.parse(context),
      enabledMouseCursor: enabledMouseCursor?.value,
      disabledMouseCursor: disabledMouseCursor?.value,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize,
      animationDuration: animationDuration,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }

  ButtonStyle parseOutlinedButton(BuildContext context) {
    return OutlinedButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledForegroundColor: disabledForegroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      iconColor: iconColor?.toColor(context),
      iconSize: iconSize,
      iconAlignment: iconAlignment,
      disabledIconColor: disabledIconColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      padding: padding.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      side: side.parse(context),
      shape: shape.parse(context),
      enabledMouseCursor: enabledMouseCursor?.value,
      disabledMouseCursor: disabledMouseCursor?.value,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize,
      animationDuration: animationDuration,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }

  ButtonStyle parseIconButton(BuildContext context) {
    return IconButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledForegroundColor: disabledForegroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      iconSize: iconSize,
      side: side?.parse(context),
      shape: shape?.parse(context),
      padding: padding?.parse,
      enabledMouseCursor: enabledMouseCursor?.value,
      disabledMouseCursor: disabledMouseCursor?.value,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize,
      animationDuration: animationDuration,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
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
      iconColor: iconColor?.toColor(context),
      iconSize: iconSize,
      iconAlignment: iconAlignment,
      disabledIconColor: disabledIconColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      padding: padding.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      side: side.parse(context),
      shape: shape.parse(context),
      enabledMouseCursor: enabledMouseCursor?.value,
      disabledMouseCursor: disabledMouseCursor?.value,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize,
      animationDuration: animationDuration,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }

  ButtonStyle parseMenuItemButton(BuildContext context) {
    return MenuItemButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      disabledForegroundColor: disabledForegroundColor.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      iconColor: iconColor.toColor(context),
      iconSize: iconSize,
      disabledIconColor: disabledIconColor.toColor(context),
      textStyle: textStyle?.parse(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      padding: padding.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      enabledMouseCursor: enabledMouseCursor?.value,
      disabledMouseCursor: disabledMouseCursor?.value,
      side: side.parse(context),
      shape: shape.parse(context),
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize,
      animationDuration: animationDuration,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }
}
