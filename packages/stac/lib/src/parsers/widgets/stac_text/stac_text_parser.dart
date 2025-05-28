import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_text.dart';

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
      textAlign: model.textAlign,
      textDirection: model.textDirection,
      softWrap: model.softWrap,
      overflow: model.overflow,
      textScaler: model.textScaleFactor != null
          ? TextScaler.linear(model.textScaleFactor!.parse)
          : TextScaler.noScaling,
      maxLines: model.maxLines,
      semanticsLabel: model.semanticsLabel,
      textWidthBasis: model.textWidthBasis,
      selectionColor: model.selectionColor.toColor(context),
    );
  }

  TextSpan _buildTextSpan(BuildContext context, StacText model) {
    return TextSpan(
      text: model.data,
      children: model.children.map((child) {
        return TextSpan(
          text: child.data,
          style: _resolveStyle(context, child.style, child.copyWithStyle),
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
    StacTextStyle? override,
  ) {
    final baseStyle = base?.parse(context);
    if (override == null) return baseStyle;

    return baseStyle?.copyWith(
      inherit: override.inherit,
      color: override.color.toColor(context),
      backgroundColor: override.backgroundColor.toColor(context),
      fontSize: override.fontSize?.parse,
      fontWeight: override.fontWeight?.value,
      fontStyle: override.fontStyle,
      wordSpacing: override.wordSpacing?.parse,
      height: override.height?.parse,
      fontFamily: override.fontFamily,
      fontFamilyFallback: override.fontFamilyFallback,
      letterSpacing: override.letterSpacing?.parse,
      textBaseline: override.textBaseline,
    );
  }
}
