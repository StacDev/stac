import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stac/src/parsers/foundation/colors/stac_brightness_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

extension StacSystemUIOverlayStyleParser on StacSystemUIOverlayStyle {
  SystemUiOverlayStyle parse(BuildContext context) {
    return SystemUiOverlayStyle(
      systemNavigationBarColor: systemNavigationBarColor?.toColor(context),
      systemNavigationBarDividerColor: systemNavigationBarDividerColor.toColor(
        context,
      ),
      systemNavigationBarIconBrightness:
          systemNavigationBarIconBrightness?.parse,
      systemNavigationBarContrastEnforced: systemNavigationBarContrastEnforced,
      statusBarColor: statusBarColor.toColor(context),
      statusBarBrightness: statusBarBrightness?.parse,
      statusBarIconBrightness: statusBarIconBrightness?.parse,
      systemStatusBarContrastEnforced: systemStatusBarContrastEnforced,
    );
  }
}
