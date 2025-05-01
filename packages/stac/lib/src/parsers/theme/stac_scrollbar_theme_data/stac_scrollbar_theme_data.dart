import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_scrollbar_theme_data.freezed.dart';
part 'stac_scrollbar_theme_data.g.dart';

@freezed
abstract class StacScrollbarThemeData with _$StacScrollbarThemeData {
  const factory StacScrollbarThemeData({
    bool? thumbVisibility,
    double? thickness,
    bool? trackVisibility,
    double? radius,
    String? thumbColor,
    String? trackColor,
    String? trackBorderColor,
    double? crossAxisMargin,
    double? mainAxisMargin,
    double? minThumbLength,
    bool? interactive,
  }) = _StacScrollbarThemeData;

  factory StacScrollbarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacScrollbarThemeDataFromJson(json);
}

extension StacScrollbarThemeDataParser on StacScrollbarThemeData {
  ScrollbarThemeData parse(BuildContext context) {
    return ScrollbarThemeData(
      thumbVisibility: WidgetStatePropertyAll<bool?>(thumbVisibility),
      thickness: WidgetStatePropertyAll<double?>(thickness),
      trackVisibility: WidgetStatePropertyAll<bool?>(trackVisibility),
      radius: Radius.circular(radius ?? 0),
      thumbColor: WidgetStatePropertyAll<Color?>(thumbColor!.toColor(context)),
      trackColor: WidgetStatePropertyAll<Color?>(trackColor!.toColor(context)),
      trackBorderColor:
          WidgetStatePropertyAll<Color?>(trackBorderColor!.toColor(context)),
      crossAxisMargin: crossAxisMargin,
      mainAxisMargin: mainAxisMargin,
      minThumbLength: minThumbLength,
      interactive: interactive,
    );
  }
}
