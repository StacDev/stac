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
  StacText getModel(Map<String, dynamic> json) => StacText.fromJson(json);

  @override
  String get type => WidgetType.text.name;

  @override
  Widget parse(BuildContext context, StacText model) {
    return Text.rich(
      TextSpan(
        text: model.data,
        children: model.children
            .map(
              (child) => TextSpan(
                text: child.data,
                style: child.style?.parse(context),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Stac.onCallFromJson(child.onTap, context),
              ),
            )
            .toList(),
      ),
      style: _getStyle(context, model),
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

  TextStyle? _getStyle(BuildContext context, StacText model) {
    final baseStyle = model.style?.parse(context);
    final copyWithStyle = model.copyWithStyle;
    if (copyWithStyle == null) return baseStyle;
    return baseStyle?.copyWith(
      inherit: copyWithStyle.inherit,
      color: copyWithStyle.color.toColor(context),
      backgroundColor: copyWithStyle.backgroundColor.toColor(context),
      fontSize: copyWithStyle.fontSize?.parse,
      fontWeight: copyWithStyle.fontWeight?.value,
      fontStyle: copyWithStyle.fontStyle,
      wordSpacing: copyWithStyle.wordSpacing?.parse,
      height: copyWithStyle.height?.parse,
      fontFamily: copyWithStyle.fontFamily,
      fontFamilyFallback: copyWithStyle.fontFamilyFallback,
      letterSpacing: copyWithStyle.letterSpacing?.parse,
      textBaseline: copyWithStyle.textBaseline,
    );
  }
}
