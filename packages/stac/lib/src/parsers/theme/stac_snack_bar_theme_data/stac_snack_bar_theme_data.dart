import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';

part 'stac_snack_bar_theme_data.freezed.dart';
part 'stac_snack_bar_theme_data.g.dart';

@freezed
abstract class StacSnackBarThemeData with _$StacSnackBarThemeData {
  const factory StacSnackBarThemeData({
    SnackBarBehavior? behavior,
    String? backgroundColor,
    double? elevation,
    StacShapeBorder? shape,
    double? width,
    StacTextStyle? contentTextStyle,
    String? actionTextColor,
    String? disabledActionTextColor,
    StacEdgeInsets? insetPadding,
    DismissDirection? dismissDirection,
    bool? showCloseIcon,
    String? closeIconColor,
    double? actionOverflowThreshold,
    String? actionBackgroundColor,
    String? disabledActionBackgroundColor,
  }) = _StacSnackBarThemeData;

  factory StacSnackBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarThemeDataFromJson(json);
}

extension StacSnackBarThemeDataParser on StacSnackBarThemeData {
  SnackBarThemeData? parse(BuildContext context) {
    return SnackBarThemeData(
      behavior: behavior,
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shape: shape?.parse(context),
      width: width,
      contentTextStyle: contentTextStyle?.parse(context),
      actionTextColor: actionTextColor?.toColor(context),
      disabledActionTextColor: disabledActionTextColor?.toColor(context),
      insetPadding: insetPadding?.parse,
      dismissDirection: dismissDirection,
      showCloseIcon: showCloseIcon,
      closeIconColor: closeIconColor?.toColor(context),
      actionOverflowThreshold: actionOverflowThreshold,
      actionBackgroundColor: actionBackgroundColor?.toColor(context),
      disabledActionBackgroundColor:
          disabledActionBackgroundColor?.toColor(context),
    );
  }
}
