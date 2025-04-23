import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_border/stac_border.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_shadow/stac_shadow.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/parsers/widgets/stac_visual_density/stac_visual_density.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_list_tile_theme_data.freezed.dart';
part 'stac_list_tile_theme_data.g.dart';

@freezed
abstract class StacListTileThemeData with _$StacListTileThemeData {
  const factory StacListTileThemeData({
    bool? dense,
    StacBorder? shape,
    ListTileStyle? style,
    String? selectedColor,
    String? iconColor,
    String? textColor,
    StacTextStyle? titleTextStyle,
    StacTextStyle? subtitleTextStyle,
    StacTextStyle? leadingAndTrailingTextStyle,
    StacEdgeInsets? contentPadding,
    String? tileColor,
    String? selectedTileColor,
    double? horizontalTitleGap,
    double? minVerticalPadding,
    double? minLeadingWidth,
    bool? enableFeedback,
    StacVisualDensity? visualDensity,
    ListTileTitleAlignment? titleAlignment,
    List<StacShadow>? shadows,
  }) = _StacListTileThemeData;

  factory StacListTileThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacListTileThemeDataFromJson(json);
}

extension StacListTileThemeDataParser on StacListTileThemeData {
  ListTileThemeData parse(BuildContext context) {
    return ListTileThemeData(
      dense: dense,
      shape: shape?.parse(context),
      style: style,
      selectedColor: selectedColor.toColor(context),
      iconColor: iconColor.toColor(context),
      textColor: textColor.toColor(context),
      titleTextStyle: titleTextStyle?.parse(context),
      subtitleTextStyle: subtitleTextStyle?.parse(context),
      leadingAndTrailingTextStyle: leadingAndTrailingTextStyle?.parse(context),
      contentPadding: contentPadding.parse,
      tileColor: tileColor.toColor(context),
      selectedTileColor: selectedTileColor.toColor(context),
      horizontalTitleGap: horizontalTitleGap,
      minVerticalPadding: minVerticalPadding,
      minLeadingWidth: minLeadingWidth,
      enableFeedback: enableFeedback,
      visualDensity: visualDensity?.parse,
      titleAlignment: titleAlignment,
    );
  }
}
