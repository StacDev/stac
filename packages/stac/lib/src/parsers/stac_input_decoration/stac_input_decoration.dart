import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/stac_input_border/stac_input_border.dart';
import 'package:stac/src/parsers/stac_input_decoration_theme/stac_input_decoration_theme.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_input_decoration.freezed.dart';
part 'stac_input_decoration.g.dart';

@freezed
abstract class StacInputDecoration with _$StacInputDecoration {
  const factory StacInputDecoration({
    Map<String, dynamic>? icon,
    String? iconColor,
    Map<String, dynamic>? label,
    String? labelText,
    StacTextStyle? labelStyle,
    StacTextStyle? floatingLabelStyle,
    String? helperText,
    StacTextStyle? helperStyle,
    String? hintText,
    StacTextStyle? hintStyle,
    int? helperMaxLines,
    TextDirection? hintTextDirection,
    int? hintMaxLines,
    String? errorText,
    StacTextStyle? errorStyle,
    int? errorMaxLines,
    FloatingLabelBehavior? floatingLabelBehavior,
    StacFloatingLabelAlignment? floatingLabelAlignment,
    @Default(false) bool isCollapsed,
    @Default(false) bool isDense,
    StacEdgeInsets? contentPadding,
    Map<String, dynamic>? prefixIcon,
    StacBoxConstraints? prefixIconConstraints,
    Map<String, dynamic>? prefix,
    String? prefixText,
    StacTextStyle? prefixStyle,
    String? prefixIconColor,
    Map<String, dynamic>? suffix,
    Map<String, dynamic>? suffixIcon,
    StacBoxConstraints? suffixIconConstraints,
    String? suffixText,
    StacTextStyle? suffixStyle,
    String? suffixIconColor,
    Map<String, dynamic>? counter,
    String? counterText,
    StacTextStyle? counterStyle,
    bool? filled,
    String? fillColor,
    String? hoverColor,
    String? focusColor,
    StacInputBorder? errorBorder,
    StacInputBorder? focusedBorder,
    StacInputBorder? focusedErrorBorder,
    StacInputBorder? disabledBorder,
    StacInputBorder? enabledBorder,
    StacInputBorder? border,
    @Default(true) bool enabled,
    String? semanticCounterText,
    @Default(false) bool alignLabelWithHint,
    StacBoxConstraints? constraints,
  }) = _StacInputDecoration;

  factory StacInputDecoration.fromJson(Map<String, dynamic> json) =>
      _$StacInputDecorationFromJson(json);
}

extension StacInputDecorationParser on StacInputDecoration? {
  InputDecoration parse(BuildContext context) {
    return InputDecoration(
      icon: Stac.fromJson(this?.icon, context),
      iconColor: this?.iconColor.toColor(context),
      label: Stac.fromJson(this?.label, context),
      labelText: this?.labelText,
      labelStyle: this?.labelStyle?.parse(context),
      floatingLabelStyle: this?.floatingLabelStyle?.parse(context),
      helperText: this?.helperText,
      helperStyle: this?.helperStyle?.parse(context),
      helperMaxLines: this?.helperMaxLines,
      hintText: this?.hintText,
      hintStyle: this?.hintStyle?.parse(context),
      hintTextDirection: this?.hintTextDirection,
      hintMaxLines: this?.hintMaxLines,
      errorText: this?.errorText,
      errorStyle: this?.errorStyle?.parse(context),
      errorMaxLines: this?.errorMaxLines,
      floatingLabelBehavior: this?.floatingLabelBehavior,
      floatingLabelAlignment: this?.floatingLabelAlignment?.parse,
      isCollapsed: this?.isCollapsed ?? false,
      isDense: this?.isDense,
      contentPadding: this?.contentPadding?.parse,
      prefixIcon: Stac.fromJson(this?.prefixIcon, context),
      prefixIconConstraints: this?.prefixIconConstraints?.parse,
      prefix: Stac.fromJson(this?.prefix, context),
      prefixText: this?.prefixText,
      prefixStyle: this?.prefixStyle?.parse(context),
      prefixIconColor: this?.prefixIconColor?.toColor(context),
      suffixIcon: Stac.fromJson(this?.suffixIcon, context),
      suffix: Stac.fromJson(this?.suffix, context),
      suffixText: this?.suffixText,
      suffixStyle: this?.suffixStyle?.parse(context),
      suffixIconColor: this?.suffixIconColor?.toColor(context),
      suffixIconConstraints: this?.suffixIconConstraints?.parse,
      counter: Stac.fromJson(this?.counter, context),
      counterText: this?.counterText,
      counterStyle: this?.counterStyle?.parse(context),
      filled: this?.filled,
      fillColor: this?.fillColor.toColor(context),
      focusColor: this?.focusColor.toColor(context),
      hoverColor: this?.hoverColor.toColor(context),
      errorBorder: this?.errorBorder?.parse(context),
      focusedBorder: this?.focusedBorder?.parse(context),
      focusedErrorBorder: this?.focusedErrorBorder?.parse(context),
      disabledBorder: this?.disabledBorder?.parse(context),
      enabledBorder: this?.enabledBorder?.parse(context),
      border: this?.border?.parse(context),
      enabled: this?.enabled ?? true,
      semanticCounterText: this?.semanticCounterText,
      alignLabelWithHint: this?.alignLabelWithHint,
      constraints: this?.constraints?.parse,
    );
  }
}
