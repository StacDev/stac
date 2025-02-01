import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_box_decoration/stac_box_decoration.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_tab_bar_theme_data.freezed.dart';
part 'stac_tab_bar_theme_data.g.dart';

@freezed
class StacTabBarThemeData with _$StacTabBarThemeData {
  const factory StacTabBarThemeData({
    StacBoxDecoration? indicator,
    String? indicatorColor,
    TabBarIndicatorSize? indicatorSize,
    String? dividerColor,
    String? labelColor,
    StacEdgeInsets? labelPadding,
    StacTextStyle? labelStyle,
    String? unselectedLabelColor,
    StacTextStyle? unselectedLabelStyle,
    String? overlayColor,
  }) = _StacTabBarThemeData;

  factory StacTabBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarThemeDataFromJson(json);
}

extension StacTabBarThemeDataParser on StacTabBarThemeData {
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
