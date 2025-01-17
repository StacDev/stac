import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/utils/color_utils.dart';

part 'mirai_border_side.freezed.dart';
part 'mirai_border_side.g.dart';

@freezed
class MiraiBorderSide with _$MiraiBorderSide {
  const factory MiraiBorderSide({
    String? color,
    @Default(0.0) double width,
    @Default(0.0) double strokeAlign,
    @Default(BorderStyle.solid) BorderStyle borderStyle,
  }) = _MiraiBorderSide;

  factory MiraiBorderSide.fromJson(Map<String, dynamic> json) =>
      _$MiraiBorderSideFromJson(json);

  const factory MiraiBorderSide.none({
    @Default("000000") String color,
    @Default(0.0) double width,
    @Default(-1.0) double strokeAlign,
    @Default(BorderStyle.none) BorderStyle borderStyle,
  }) = _MiraiBorderSideNone;
}

extension MiraiBorderSideParser on MiraiBorderSide? {
  BorderSide parse(BuildContext context) {
    return BorderSide(
      color: this?.color.toColor(context) ?? const Color(0xFF000000),
      width: this?.width ?? 0.0,
      style: this?.borderStyle ?? BorderStyle.solid,
      strokeAlign: this?.strokeAlign ?? 0.0,
    );
  }
}
