import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/foundation.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

extension StacInputDecorationThemeParser on StacInputDecorationTheme? {
  InputDecorationTheme parse(BuildContext context) {
    FloatingLabelBehavior parseFloatingLabelBehavior(String? behavior) {
      switch (behavior) {
        case 'always':
          return FloatingLabelBehavior.always;
        case 'never':
          return FloatingLabelBehavior.never;
        case 'auto':
        default:
          return FloatingLabelBehavior.auto;
      }
    }

    FloatingLabelAlignment parseFloatingLabelAlignment(String? alignment) {
      switch (alignment) {
        case 'center':
          return FloatingLabelAlignment.center;
        case 'start':
        default:
          return FloatingLabelAlignment.start;
      }
    }

    return InputDecorationTheme(
      labelStyle: this?.labelStyle?.parse(context),
      floatingLabelStyle: this?.floatingLabelStyle?.parse(context),
      helperStyle: this?.helperStyle?.parse(context),
      helperMaxLines: this?.helperMaxLines,
      hintStyle: this?.hintStyle?.parse(context),
      errorStyle: this?.errorStyle?.parse(context),
      errorMaxLines: this?.errorMaxLines,
      floatingLabelBehavior: parseFloatingLabelBehavior(
        this?.floatingLabelBehavior,
      ),
      floatingLabelAlignment: parseFloatingLabelAlignment(
        this?.floatingLabelAlignment,
      ),
      isDense: this?.isDense ?? false,
      contentPadding: this?.contentPadding?.parse,
      isCollapsed: this?.isCollapsed ?? false,
      iconColor: this?.iconColor.toColor(context),
      prefixStyle: this?.prefixStyle?.parse(context),
      prefixIconColor: this?.prefixIconColor.toColor(context),
      suffixStyle: this?.suffixStyle?.parse(context),
      suffixIconColor: this?.suffixIconColor.toColor(context),
      counterStyle: this?.counterStyle?.parse(context),
      filled: this?.filled ?? false,
      fillColor: this?.fillColor.toColor(context),
      alignLabelWithHint: this?.alignLabelWithHint ?? false,
      constraints: this?.constraints?.parse,
      errorBorder: this?.errorBorder.parse(context),
      focusedBorder: this?.focusedBorder.parse(context),
      focusedErrorBorder: this?.focusedErrorBorder.parse(context),
      disabledBorder: this?.disabledBorder.parse(context),
      enabledBorder: this?.enabledBorder.parse(context),
      border: this?.border.parse(context),
    );
  }
}
