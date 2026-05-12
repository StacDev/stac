import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_align_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_overflow_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_width_basis_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/widgets/text/stac_text.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTextParser extends StacParser<StacText> {
  const StacTextParser();

  @override
  String get type => WidgetType.text.name;

  @override
  StacText getModel(Map<String, dynamic> json) => StacText.fromJson(json);

  @override
  Widget parse(BuildContext context, StacText model) {
    return Text.rich(
      _buildTextSpan(context, model),
      style: _resolveStyle(context, model.style, model.copyWithStyle),
      textAlign: model.textAlign?.parse,
      textDirection: model.textDirection?.parse,
      softWrap: model.softWrap,
      overflow: model.overflow?.parse,
      textScaler: model.textScaleFactor != null
          ? TextScaler.linear(model.textScaleFactor!)
          : TextScaler.noScaling,
      maxLines: model.maxLines,
      semanticsLabel: model.semanticsLabel,
      textWidthBasis: model.textWidthBasis?.parse,
      selectionColor: model.selectionColor?.toColor(context),
    );
  }

  TextSpan _buildTextSpan(BuildContext context, StacText model) {
    var children = model.children ?? [];
    return TextSpan(
      text: model.data,
      children: children.map((child) {
        return TextSpan(
          text: child.text,
          style: child.style?.parse(context),
          recognizer: child.onTap != null
              ? (TapGestureRecognizer()
                  ..onTap = () => Stac.onCallFromJson(child.onTap, context))
              : null,
        );
      }).toList(),
    );
  }

  TextStyle? _resolveStyle(
    BuildContext context,
    StacTextStyle? base,
    StacCustomTextStyle? override,
  ) {
    final baseStyle = base?.parse(context);
    if (override == null) return baseStyle;

    final overrideParsed = override.parse(context);
    if (overrideParsed == null) return baseStyle;
    if (baseStyle == null) return null;

    return baseStyle.copyWith(
      inherit: override.inherit,
      color: overrideParsed.color,
      backgroundColor: overrideParsed.backgroundColor,
      fontSize: overrideParsed.fontSize,
      fontWeight: overrideParsed.fontWeight,
      fontStyle: overrideParsed.fontStyle,
      letterSpacing: overrideParsed.letterSpacing,
      wordSpacing: overrideParsed.wordSpacing,
      textBaseline: overrideParsed.textBaseline,
      height: overrideParsed.height,
      leadingDistribution: overrideParsed.leadingDistribution,
      decoration: overrideParsed.decoration,
      decorationColor: overrideParsed.decorationColor,
      decorationStyle: overrideParsed.decorationStyle,
      decorationThickness: overrideParsed.decorationThickness,
      debugLabel: overrideParsed.debugLabel,
      fontFamily: overrideParsed.fontFamily,
      fontFamilyFallback: overrideParsed.fontFamilyFallback,
      overflow: overrideParsed.overflow,
    );
  }
}
