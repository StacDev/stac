import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_border_side/stac_border_side.dart';
import 'package:stac/src/parsers/widgets/stac_mouse_cursor/stac_mouse_cursor.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_rounded_rectangle_border.dart';
import 'package:stac/src/parsers/widgets/stac_visual_density/stac_visual_density.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_checkbox_theme_data.freezed.dart';
part 'stac_checkbox_theme_data.g.dart';

@freezed
abstract class StacCheckboxThemeData with _$StacCheckboxThemeData {
  const factory StacCheckboxThemeData({
    StacMouseCursor? mouseCursor,
    String? fillColor,
    String? checkColor,
    String? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    StacVisualDensity? visualDensity,
    StacRoundedRactangleBorder? shape,
    StacBorderSide? side,
  }) = _StacCheckboxThemeData;

  factory StacCheckboxThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacCheckboxThemeDataFromJson(json);
}

extension StacCheckboxThemeDataParser on StacCheckboxThemeData {
  CheckboxThemeData parse(BuildContext context) {
    return CheckboxThemeData(
      mouseCursor: WidgetStateProperty.all(mouseCursor?.value),
      fillColor: fillColor != null
          ? WidgetStateProperty.all(fillColor!.toColor(context))
          : null,
      checkColor: checkColor != null
          ? WidgetStateProperty.all(checkColor!.toColor(context))
          : null,
      overlayColor: overlayColor != null
          ? WidgetStateProperty.all(overlayColor!.toColor(context))
          : null,
      splashRadius: splashRadius,
      materialTapTargetSize: materialTapTargetSize,
      visualDensity: visualDensity?.parse,
      shape: shape?.parse(context) as OutlinedBorder?,
      side: side?.parse(context),
    );
  }
}
