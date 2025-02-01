import 'package:flutter/material.dart';
import 'package:stac/src/parsers/stac_input_decoration/stac_input_decoration.dart';
import 'package:stac/src/parsers/stac_input_formatters/stac_input_formatter.dart';
import 'package:stac/src/parsers/stac_text_field/stac_text_field.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTextFieldParser extends StacParser<StacTextField> {
  const StacTextFieldParser({
    this.controller,
    this.focusNode,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  StacTextField getModel(Map<String, dynamic> json) =>
      StacTextField.fromJson(json);

  @override
  String get type => WidgetType.textField.name;

  @override
  Widget parse(BuildContext context, StacTextField model) {
    controller?.text = model.initialValue;

    return TextField(
      controller: controller ?? TextEditingController(text: model.initialValue),
      focusNode: focusNode,
      keyboardType: model.keyboardType?.value,
      textInputAction: model.textInputAction,
      textCapitalization: model.textCapitalization,
      textAlign: model.textAlign,
      textAlignVertical: model.textAlignVertical?.value,
      textDirection: model.textDirection,
      readOnly: model.readOnly,
      showCursor: model.showCursor,
      autofocus: model.autofocus,
      obscuringCharacter: model.obscuringCharacter,
      maxLines: model.maxLines,
      minLines: model.minLines,
      maxLength: model.maxLength,
      obscureText: model.obscureText,
      enableSuggestions: model.enableSuggestions,
      enabled: model.enabled,
      expands: model.expands,
      cursorWidth: model.cursorWidth,
      cursorHeight: model.cursorHeight,
      cursorColor: model.cursorColor?.toColor(context),
      style: model.style?.parse(context),
      decoration: model.decoration?.parse(context),
      inputFormatters: model.inputFormatters
          .map((StacInputFormatter formatter) =>
              formatter.type.format(formatter.rule ?? ""))
          .toList(),
    );
  }
}
