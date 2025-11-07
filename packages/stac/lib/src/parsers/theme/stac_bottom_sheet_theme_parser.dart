import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_box_constraints_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_size_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacBottomSheetThemeData].
///
/// Converts [StacBottomSheetThemeData] to Flutter's [BottomSheetThemeData].
extension StacBottomSheetThemeDataParser on StacBottomSheetThemeData {
  BottomSheetThemeData parse(BuildContext context) {
    return BottomSheetThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      elevation: elevation,
      modalBackgroundColor: modalBackgroundColor?.toColor(context),
      modalBarrierColor: modalBarrierColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      modalElevation: modalElevation,
      shape: shape?.parse(context),
      showDragHandle: showDragHandle,
      dragHandleColor: dragHandleColor?.toColor(context),
      dragHandleSize: dragHandleSize?.parse,
      clipBehavior: clipBehavior?.parse,
      constraints: constraints?.parse,
    );
  }
}
