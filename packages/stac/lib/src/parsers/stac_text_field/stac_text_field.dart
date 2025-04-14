import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_input_decoration/stac_input_decoration.dart';
import 'package:stac/src/parsers/stac_input_formatters/stac_input_formatter.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/text_input_utils.dart';

export 'package:stac/src/parsers/stac_text_field/stac_text_field_parser.dart';

part 'stac_text_field.freezed.dart';
part 'stac_text_field.g.dart';

@freezed
abstract class StacTextField with _$StacTextField {
  const factory StacTextField({
    StacInputDecoration? decoration,
    @Default("") String initialValue,
    StacTextInputType? keyboardType,
    TextInputAction? textInputAction,
    @Default(TextCapitalization.none) TextCapitalization textCapitalization,
    StacTextStyle? style,
    @Default(TextAlign.start) TextAlign textAlign,
    StacTextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    @Default(false) bool readOnly,
    bool? showCursor,
    @Default(false) expands,
    @Default(false) bool autofocus,
    @Default('•') String obscuringCharacter,
    int? maxLines,
    int? minLines,
    int? maxLength,
    @Default(false) bool obscureText,
    @Default(true) bool enableSuggestions,
    bool? enabled,
    @Default(2) double cursorWidth,
    double? cursorHeight,
    String? cursorColor,
    String? hintText,
    @Default([]) List<StacInputFormatter> inputFormatters,
  }) = _StacTextField;

  factory StacTextField.fromJson(Map<String, dynamic> json) =>
      _$StacTextFieldFromJson(json);
}
