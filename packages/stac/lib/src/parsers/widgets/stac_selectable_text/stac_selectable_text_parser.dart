import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_align_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_width_basis_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/widgets/selectable_text/stac_selectable_text.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSelectableTextParser extends StacParser<StacSelectableText> {
  const StacSelectableTextParser();

  @override
  String get type => WidgetType.selectableText.name;

  @override
  StacSelectableText getModel(Map<String, dynamic> json) =>
      StacSelectableText.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSelectableText model) {
    return SelectableText.rich(
      _buildTextSpan(context, model),
      onTap: model.onTap != null
          ? () => Stac.onCallFromJson(model.onTap?.toJson(), context)
          : null,
      style: _resolveStyle(context, model.style, model.copyWithStyle),
      textAlign: model.textAlign?.parse,
      textDirection: model.textDirection?.parse,
      textScaler: model.textScaler != null
          ? TextScaler.linear(model.textScaler!)
          : null,
      showCursor: model.showCursor ?? false,
      autofocus: model.autofocus ?? false,
      minLines: model.minLines,
      maxLines: model.maxLines,
      cursorWidth: model.cursorWidth ?? 2.0,
      cursorHeight: model.cursorHeight,
      cursorRadius: model.cursorRadius != null
          ? Radius.circular(model.cursorRadius!)
          : null,
      cursorColor: model.cursorColor?.toColor(context),
      selectionColor: model.selectionColor?.toColor(context),
      enableInteractiveSelection: model.enableInteractiveSelection ?? true,
      semanticsLabel: model.semanticsLabel,
      textWidthBasis: model.textWidthBasis?.parse,
    );
  }

  TextSpan _buildTextSpan(BuildContext context, StacSelectableText model) {
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
    if (baseStyle == null) return overrideParsed;

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
