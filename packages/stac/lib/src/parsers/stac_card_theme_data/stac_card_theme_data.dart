import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_border/stac_border.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_card_theme_data.freezed.dart';
part 'stac_card_theme_data.g.dart';

@freezed
class StacCardThemeData with _$StacCardThemeData {
  const factory StacCardThemeData({
    Clip? clipBehavior,
    String? color,
    String? shadowColor,
    String? surfaceTintColor,
    double? elevation,
    StacEdgeInsets? margin,
    StacBorder? shape,
  }) = _StacCardThemeData;

  factory StacCardThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacCardThemeDataFromJson(json);
}

extension StacCardThemeDataParser on StacCardThemeData {
  CardThemeData? parse(BuildContext context) {
    return CardThemeData(
      clipBehavior: clipBehavior,
      color: color.toColor(context),
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      elevation: elevation,
      margin: margin.parse,
      shape: shape?.parse(context),
    );
  }
}
