import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_color_scheme/stac_color_scheme.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_button_theme_data.freezed.dart';
part 'stac_button_theme_data.g.dart';

@freezed
abstract class StacButtonThemeData with _$StacButtonThemeData {
  const factory StacButtonThemeData({
    @Default(ButtonTextTheme.normal) ButtonTextTheme textTheme,
    @Default(88.0) double minWidth,
    @Default(36.0) double height,
    StacEdgeInsets? padding,
    StacShapeBorder? shape,
    @Default(ButtonBarLayoutBehavior.padded)
    ButtonBarLayoutBehavior layoutBehavior,
    @Default(false) bool alignedDropdown,
    String? buttonColor,
    String? disabledColor,
    String? focusColor,
    String? hoverColor,
    String? highlightColor,
    String? splashColor,
    StacColorScheme? colorScheme,
    MaterialTapTargetSize? materialTapTargetSize,
  }) = _StacButtonThemeData;

  factory StacButtonThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacButtonThemeDataFromJson(json);
}

extension StacButtonThemeDataParser on StacButtonThemeData {
  ButtonThemeData? parse(BuildContext context) {
    return ButtonThemeData(
      textTheme: textTheme,
      minWidth: minWidth,
      height: height,
      padding: padding?.parse,
      shape: shape?.parse(context),
      layoutBehavior: layoutBehavior,
      alignedDropdown: alignedDropdown,
      buttonColor: buttonColor?.toColor(context),
      disabledColor: disabledColor?.toColor(context),
      focusColor: focusColor?.toColor(context),
      hoverColor: hoverColor?.toColor(context),
      highlightColor: highlightColor?.toColor(context),
      splashColor: splashColor?.toColor(context),
      colorScheme: colorScheme?.parse(context),
      materialTapTargetSize: materialTapTargetSize,
    );
  }
}
