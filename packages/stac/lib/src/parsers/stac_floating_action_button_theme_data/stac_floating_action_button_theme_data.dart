import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_floating_action_button_theme_data.freezed.dart';
part 'stac_floating_action_button_theme_data.g.dart';

@freezed
abstract class StacFloatingActionButtonThemeData
    with _$StacFloatingActionButtonThemeData {
  const factory StacFloatingActionButtonThemeData({
    String? foregroundColor,
    String? backgroundColor,
    String? focusColor,
    String? hoverColor,
    String? splashColor,
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? disabledElevation,
    double? highlightElevation,
    bool? enableFeedback,
    double? iconSize,
    double? extendedIconLabelSpacing,
    StacEdgeInsets? extendedPadding,
    StacTextStyle? extendedTextStyle,
  }) = _StacFloatingActionButtonThemeData;

  factory StacFloatingActionButtonThemeData.fromJson(
          Map<String, dynamic> json) =>
      _$StacFloatingActionButtonThemeDataFromJson(json);
}

extension StacFloatingActionThemeParser on StacFloatingActionButtonThemeData {
  FloatingActionButtonThemeData parse(BuildContext context) {
    return FloatingActionButtonThemeData(
      foregroundColor: foregroundColor.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      focusColor: focusColor.toColor(context),
      hoverColor: hoverColor.toColor(context),
      splashColor: splashColor.toColor(context),
      elevation: elevation,
      focusElevation: focusElevation,
      hoverElevation: hoverElevation,
      disabledElevation: disabledElevation,
      highlightElevation: highlightElevation,
      enableFeedback: enableFeedback,
      iconSize: iconSize,
      extendedIconLabelSpacing: extendedIconLabelSpacing,
      extendedPadding: extendedPadding.parse,
      extendedTextStyle: extendedTextStyle?.parse(context),
    );
  }
}
