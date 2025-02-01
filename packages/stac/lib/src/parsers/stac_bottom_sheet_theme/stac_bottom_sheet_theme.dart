import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_border/stac_border.dart';
import 'package:stac/src/parsers/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/stac_size/stac_size.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_bottom_sheet_theme.freezed.dart';
part 'stac_bottom_sheet_theme.g.dart';

@freezed
class StacBottomSheetThemeData with _$StacBottomSheetThemeData {
  const factory StacBottomSheetThemeData({
    String? backgroundColor,
    String? surfaceTintColor,
    double? elevation,
    String? modalBackgroundColor,
    String? modalBarrierColor,
    String? shadowColor,
    double? modalElevation,
    StacBorder? shape,
    bool? showDragHandle,
    String? dragHandleColor,
    StacSize? dragHandleSize,
    Clip? clipBehavior,
    StacBoxConstraints? constraints,
  }) = _StacBottomSheetThemeData;

  factory StacBottomSheetThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBottomSheetThemeDataFromJson(json);
}

extension StacBottomSheetThemeDataParser on StacBottomSheetThemeData {
  BottomSheetThemeData parse(BuildContext context) {
    return BottomSheetThemeData(
      backgroundColor: backgroundColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      elevation: elevation,
      modalBackgroundColor: modalBackgroundColor.toColor(context),
      modalBarrierColor: modalBarrierColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      modalElevation: modalElevation,
      shape: shape?.parse(context),
      showDragHandle: showDragHandle,
      dragHandleColor: dragHandleColor.toColor(context),
      dragHandleSize: dragHandleSize.parse,
      clipBehavior: clipBehavior,
      constraints: constraints?.parse,
    );
  }
}
