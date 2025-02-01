import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_bottom_app_bar_theme.freezed.dart';
part 'stac_bottom_app_bar_theme.g.dart';

@freezed
class StacBottomAppBarTheme with _$StacBottomAppBarTheme {
  const factory StacBottomAppBarTheme({
    String? color,
    double? elevation,
    double? height,
    String? surfaceTintColor,
    String? shadowColor,
    StacEdgeInsets? padding,
  }) = _StacBottomAppBarTheme;

  factory StacBottomAppBarTheme.fromJson(Map<String, dynamic> json) =>
      _$StacBottomAppBarThemeFromJson(json);
}

extension StacBottomAppBarThemeParser on StacBottomAppBarTheme {
  BottomAppBarTheme? parse(BuildContext context) {
    return BottomAppBarTheme(
      color: color?.toColor(context),
      elevation: elevation,
      height: height,
      surfaceTintColor: surfaceTintColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      padding: padding?.parse,
    );
  }
}
