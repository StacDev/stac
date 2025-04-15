import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_border_side/stac_border_side.dart';
import 'package:stac/src/parsers/widgets/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_input_border/stac_input_border.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_input_decoration_theme.freezed.dart';
part 'stac_input_decoration_theme.g.dart';

enum StacFloatingLabelAlignment {
  start,
  center;

  FloatingLabelAlignment get parse {
    switch (this) {
      case start:
        return FloatingLabelAlignment.start;
      case center:
        return FloatingLabelAlignment.center;
    }
  }
}

@freezed
abstract class StacInputDecorationTheme with _$StacInputDecorationTheme {
  const factory StacInputDecorationTheme({
    StacTextStyle? labelStyle,
    StacTextStyle? floatingLabelStyle,
    StacTextStyle? helperStyle,
    int? helperMaxLines,
    StacTextStyle? hintStyle,
    StacTextStyle? errorStyle,
    int? errorMaxLines,
    FloatingLabelBehavior? floatingLabelBehavior,
    StacFloatingLabelAlignment? floatingLabelAlignment,
    @Default(false) bool isDense,
    StacEdgeInsets? contentPadding,
    @Default(false) bool isCollapsed,
    String? iconColor,
    StacTextStyle? prefixStyle,
    String? prefixIconColor,
    StacTextStyle? suffixStyle,
    String? suffixIconColor,
    StacTextStyle? counterStyle,
    @Default(false) bool filled,
    String? fillColor,
    StacBorderSide? activeIndicatorBorder,
    StacBorderSide? outlineBorder,
    String? focusColor,
    String? hoverColor,
    StacInputBorder? errorBorder,
    StacInputBorder? focusedBorder,
    StacInputBorder? focusedErrorBorder,
    StacInputBorder? disabledBorder,
    StacInputBorder? enabledBorder,
    StacInputBorder? border,
    @Default(false) bool alignLabelWithHint,
    StacBoxConstraints? constraints,
  }) = _StacInputDecorationTheme;

  factory StacInputDecorationTheme.fromJson(Map<String, dynamic> json) =>
      _$StacInputDecorationThemeFromJson(json);
}

extension StacInputDecorationThemeParser on StacInputDecorationTheme? {
  InputDecorationTheme parse(BuildContext context) {
    return InputDecorationTheme(
      labelStyle: this?.labelStyle?.parse(context),
      floatingLabelStyle: this?.floatingLabelStyle?.parse(context),
      helperStyle: this?.helperStyle?.parse(context),
      helperMaxLines: this?.helperMaxLines,
      hintStyle: this?.hintStyle?.parse(context),
      errorStyle: this?.errorStyle?.parse(context),
      errorMaxLines: this?.errorMaxLines,
      floatingLabelBehavior:
          this?.floatingLabelBehavior ?? FloatingLabelBehavior.auto,
      floatingLabelAlignment:
          this?.floatingLabelAlignment?.parse ?? FloatingLabelAlignment.start,
      isDense: this?.isDense ?? false,
      contentPadding: this?.contentPadding?.parse,
      isCollapsed: this?.isCollapsed ?? false,
      iconColor: this?.iconColor.toColor(context),
      prefixStyle: this?.prefixStyle?.parse(context),
      prefixIconColor: this?.prefixIconColor.toColor(context),
      suffixStyle: this?.suffixStyle?.parse(context),
      suffixIconColor: this?.suffixIconColor.toColor(context),
      counterStyle: this?.counterStyle?.parse(context),
      filled: this?.filled ?? false,
      fillColor: this?.fillColor.toColor(context),
      activeIndicatorBorder: this?.activeIndicatorBorder.parse(context),
      outlineBorder: this?.outlineBorder.parse(context),
      focusColor: this?.focusColor.toColor(context),
      hoverColor: this?.hoverColor.toColor(context),
      errorBorder: this?.errorBorder?.parse(context),
      focusedBorder: this?.focusedBorder?.parse(context),
      focusedErrorBorder: this?.focusedErrorBorder?.parse(context),
      disabledBorder: this?.disabledBorder?.parse(context),
      enabledBorder: this?.enabledBorder?.parse(context),
      border: this?.border?.parse(context),
      alignLabelWithHint: this?.alignLabelWithHint ?? false,
      constraints: this?.constraints?.parse,
    );
  }
}
