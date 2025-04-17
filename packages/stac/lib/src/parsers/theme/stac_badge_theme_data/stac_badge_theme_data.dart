import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_alignment_geometry/stac_alignment_geometry.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_offset/stac_offset.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_badge_theme_data.freezed.dart';
part 'stac_badge_theme_data.g.dart';

@freezed
abstract class StacBadgeThemeData with _$StacBadgeThemeData {
  const factory StacBadgeThemeData({
    String? backgroundColor,
    String? textColor,
    double? smallSize,
    double? largeSize,
    StacTextStyle? textStyle,
    StacEdgeInsets? padding,
    StacAlignmentGeometry? alignment,
    StacOffset? offset,
  }) = _StacBadgeThemeData;

  factory StacBadgeThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBadgeThemeDataFromJson(json);
}

extension StacBadgeThemeDataParser on StacBadgeThemeData {
  BadgeThemeData parse(BuildContext context) {
    return BadgeThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      textColor: textColor?.toColor(context),
      smallSize: smallSize,
      largeSize: largeSize,
      textStyle: textStyle?.parse(context),
      padding: padding?.parse,
      alignment: alignment?.parse,
      offset: offset?.parse,
    );
  }
}
