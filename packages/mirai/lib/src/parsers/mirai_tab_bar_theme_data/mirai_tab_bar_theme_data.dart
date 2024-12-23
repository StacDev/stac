import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_box_decoration/mirai_box_decoration.dart';
import 'package:mirai/src/parsers/mirai_edge_insets/mirai_edge_insets.dart';
import 'package:mirai/src/parsers/mirai_text_style/mirai_text_style.dart';
import 'package:mirai/src/utils/color_utils.dart';

part 'mirai_tab_bar_theme_data.freezed.dart';
part 'mirai_tab_bar_theme_data.g.dart';

@freezed
class MiraiTabBarThemeData with _$MiraiTabBarThemeData {
  const factory MiraiTabBarThemeData({
    MiraiBoxDecoration? indicator,
    String? indicatorColor,
    TabBarIndicatorSize? indicatorSize,
    String? dividerColor,
    String? labelColor,
    MiraiEdgeInsets? labelPadding,
    MiraiTextStyle? labelStyle,
    String? unselectedLabelColor,
    MiraiTextStyle? unselectedLabelStyle,
    String? overlayColor,
  }) = _MiraiTabBarThemeData;

  factory MiraiTabBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$MiraiTabBarThemeDataFromJson(json);
}

extension MiraiTabBarThemeDataParser on MiraiTabBarThemeData {
  TabBarTheme? parse(BuildContext context) {
    return TabBarTheme(
      indicator: indicator.parse(context),
      indicatorColor: indicatorColor.toColor(context),
      indicatorSize: indicatorSize,
      dividerColor: dividerColor.toColor(context),
      labelColor: labelColor.toColor(context),
      labelPadding: labelPadding.parse,
      labelStyle: labelStyle?.parse(context),
      unselectedLabelColor: unselectedLabelColor.toColor(context),
      unselectedLabelStyle: unselectedLabelStyle?.parse(context),
      overlayColor: WidgetStateProperty.all(overlayColor.toColor(context)),
    );
  }
}
