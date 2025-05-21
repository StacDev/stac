import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_form_field_validator/stac_form_validator.dart';
import 'package:stac/src/parsers/widgets/stac_input_decoration/stac_input_decoration.dart';
import 'package:stac/src/parsers/widgets/stac_input_formatters/stac_input_formatter.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/text_input_utils.dart';

export 'stac_text_form_field_parser.dart';

part 'stac_text_form_field.freezed.dart';
part 'stac_text_form_field.g.dart';

@freezed
abstract class StacTextFormField with _$StacTextFormField {
  const factory StacTextFormField({
    String? id,
    String? compareId,
    StacInputDecoration? decoration,
    String? initialValue,
    StacTextInputType? keyboardType,
    TextInputAction? textInputAction,
    @Default(TextCapitalization.none) TextCapitalization textCapitalization,
    StacTextStyle? style,
    @Default(TextAlign.start) TextAlign textAlign,
    StacTextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    @Default(false) bool readOnly,
    bool? showCursor,
    @Default(false) bool autofocus,
    @Default('•') String obscuringCharacter,
    int? maxLines,
    int? minLines,
    int? maxLength,
    bool? obscureText,
    @Default(true) bool autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    MaxLengthEnforcement? maxLengthEnforcement,
    @Default(false) bool expands,
    Brightness? keyboardAppearance,
    @Default(StacEdgeInsets(
        bottom: StacDouble(20),
        top: StacDouble(20),
        left: StacDouble(20),
        right: StacDouble(20)))
    StacEdgeInsets scrollPadding,
    String? restorationId,
    @Default(true) bool enableIMEPersonalizedLearning,
    @Default(true) bool enableSuggestions,
    bool? enabled,
    @Default(StacDouble(2)) StacDouble cursorWidth,
    StacDouble? cursorHeight,
    String? cursorColor,
    String? hintText,
    AutovalidateMode? autovalidateMode,
    @Default([]) List<StacInputFormatter> inputFormatters,
    @Default([]) List<StacFormFieldValidator> validatorRules,
  }) = _StacTextFormField;

  factory StacTextFormField.fromJson(Map<String, dynamic> json) =>
      _$StacTextFormFieldFromJson(json);
}
