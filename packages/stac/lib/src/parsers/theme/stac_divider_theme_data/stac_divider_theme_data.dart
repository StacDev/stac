import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_divider_theme_data.freezed.dart';
part 'stac_divider_theme_data.g.dart';

@freezed
abstract class StacDividerThemeData with _$StacDividerThemeData {
  const factory StacDividerThemeData({
    String? color,
    double? space,
    double? thickness,
    double? indent,
    double? endIndent,
  }) = _StacDividerThemeData;

  factory StacDividerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDividerThemeDataFromJson(json);
}

extension StacDividerThemeDataParser on StacDividerThemeData {
  DividerThemeData parse(BuildContext context) {
    return DividerThemeData(
      color: color?.toColor(context),
      space: space,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
