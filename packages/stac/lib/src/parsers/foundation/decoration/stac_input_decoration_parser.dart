import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_input_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

extension StacInputDecorationParser on StacInputDecoration {
  InputDecoration parse(BuildContext context) {
    return InputDecoration(
      icon: icon?.parse(context),
      labelText: labelText,
      labelStyle: labelStyle?.parse(context),
      floatingLabelBehavior: _parseFloatingLabelBehavior(floatingLabelBehavior),
      hintText: hintText,
      hintStyle: hintStyle?.parse(context),
      helperText: helperText,
      helperStyle: helperStyle?.parse(context),
      errorText: errorText,
      errorStyle: errorStyle?.parse(context),
      prefixIcon: prefixIcon?.parse(context),
      prefixText: prefixText,
      prefixStyle: prefixStyle?.parse(context),
      suffixIcon: suffixIcon?.parse(context),
      suffixText: suffixText,
      suffixStyle: suffixStyle?.parse(context),
      isDense: isDense,
      contentPadding: contentPadding?.parse,
      filled: filled,
      fillColor: fillColor?.toColor(context),
      alignLabelWithHint: alignLabelWithHint,
      errorBorder: errorBorder.parse(context),
      focusedBorder: focusedBorder.parse(context),
      focusedErrorBorder: focusedErrorBorder.parse(context),
      disabledBorder: disabledBorder.parse(context),
      enabledBorder: enabledBorder.parse(context),
      border: border.parse(context),
    );
  }
}

FloatingLabelBehavior? _parseFloatingLabelBehavior(String? behavior) {
  switch (behavior) {
    case 'always':
      return FloatingLabelBehavior.always;
    case 'never':
      return FloatingLabelBehavior.never;
    case 'auto':
      return FloatingLabelBehavior.auto;
    default:
      return null;
  }
}
