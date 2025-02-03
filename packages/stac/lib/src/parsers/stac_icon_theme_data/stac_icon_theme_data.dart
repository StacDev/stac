import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_shadow/stac_shadow.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_icon_theme_data.freezed.dart';
part 'stac_icon_theme_data.g.dart';

@freezed
class StacIconThemeData with _$StacIconThemeData {
  const factory StacIconThemeData({
    double? size,
    double? fill,
    double? weight,
    double? grade,
    double? opticalSize,
    String? color,
    double? opacity,
    List<StacShadow>? shadows,
  }) = _StacIconThemeData;

  factory StacIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacIconThemeDataFromJson(json);
}

extension StacIconThemeDataParser on StacIconThemeData {
  IconThemeData? parse(BuildContext context) {
    return IconThemeData(
      size: size,
      fill: fill,
      weight: weight,
      grade: grade,
      opticalSize: opticalSize,
      color: color.toColor(context),
      opacity: opacity,
      shadows: shadows?.map((shadow) => shadow.parse(context)).toList(),
    );
  }
}
