import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_system_ui_overlay_style.freezed.dart';
part 'stac_system_ui_overlay_style.g.dart';

@freezed
class StacSystemUIOverlayStyle with _$StacSystemUIOverlayStyle {
  const factory StacSystemUIOverlayStyle({
    String? systemNavigationBarColor,
    String? systemNavigationBarDividerColor,
    Brightness? systemNavigationBarIconBrightness,
    bool? systemNavigationBarContrastEnforced,
    String? statusBarColor,
    Brightness? statusBarBrightness,
    Brightness? statusBarIconBrightness,
    bool? systemStatusBarContrastEnforced,
  }) = _StacSystemUIOverlayStyle;

  factory StacSystemUIOverlayStyle.fromJson(Map<String, dynamic> json) =>
      _$StacSystemUIOverlayStyleFromJson(json);
}

extension StacSystemUIOverlayStyleParser on StacSystemUIOverlayStyle {
  SystemUiOverlayStyle parse(BuildContext context) {
    return SystemUiOverlayStyle(
      systemNavigationBarColor: systemNavigationBarColor.toColor(context),
      systemNavigationBarDividerColor:
          systemNavigationBarDividerColor.toColor(context),
      systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
      systemNavigationBarContrastEnforced: systemNavigationBarContrastEnforced,
      statusBarColor: statusBarColor.toColor(context),
      statusBarBrightness: statusBarBrightness,
      statusBarIconBrightness: statusBarIconBrightness,
      systemStatusBarContrastEnforced: systemStatusBarContrastEnforced,
    );
  }
}
