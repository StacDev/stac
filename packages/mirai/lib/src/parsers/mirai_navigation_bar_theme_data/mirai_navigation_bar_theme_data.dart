import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_border/mirai_border.dart';
import 'package:mirai/src/parsers/mirai_icon_theme_data/mirai_icon_theme_data.dart';
import 'package:mirai/src/parsers/mirai_text_style/mirai_text_style.dart';
import 'package:mirai/src/utils/color_utils.dart';

part 'mirai_navigation_bar_theme_data.freezed.dart';
part 'mirai_navigation_bar_theme_data.g.dart';

@freezed
class MiraiNavigationBarThemeData with _$MiraiNavigationBarThemeData {
  const factory MiraiNavigationBarThemeData({
    double? height,
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    String? indicatorColor,
    MiraiBorder? indicatorShape,
    MiraiTextStyle? labelTextStyle,
    MiraiIconThemeData? iconTheme,
    NavigationDestinationLabelBehavior? labelBehavior,
  }) = _MiraiNavigationBarThemeData;

  factory MiraiNavigationBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$MiraiNavigationBarThemeDataFromJson(json);
}

extension MiraiNavigationBarThemeDataParser on MiraiNavigationBarThemeData {
  NavigationBarThemeData? parse(BuildContext context) {
    return NavigationBarThemeData(
      height: height,
      backgroundColor: backgroundColor.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      indicatorColor: indicatorColor.toColor(context),
      indicatorShape: indicatorShape?.parse(context),
      labelTextStyle: WidgetStateProperty.all(labelTextStyle?.parse(context)),
      iconTheme: WidgetStateProperty.all(iconTheme?.parse(context)),
      labelBehavior: labelBehavior,
    );
  }
}
