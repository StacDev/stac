import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
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
      hintText: hintText,
      hintStyle: hintStyle?.parse(context),
      helperText: helperText,
      helperStyle: helperStyle?.parse(context),
      errorText: errorText,
      errorStyle: errorStyle?.parse(context),
      prefixIcon: prefixIcon?.parse(context),
      prefixText: prefixText,
      prefixStyle: prefixStyle?.parse(context),
      suffixIcon: suffixIcon.parse(context),
      suffixText: suffixText,
      suffixStyle: suffixStyle?.parse(context),
      isDense: isDense,
      contentPadding: contentPadding?.parse,
      filled: filled,
      fillColor: fillColor?.toColor(context),
      alignLabelWithHint: alignLabelWithHint,
    );
  }
}
