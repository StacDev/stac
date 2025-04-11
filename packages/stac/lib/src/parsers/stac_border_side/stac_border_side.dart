import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_border_side.freezed.dart';
part 'stac_border_side.g.dart';

@freezed
abstract class StacBorderSide with _$StacBorderSide {
  const factory StacBorderSide({
    String? color,
    @Default(0.0) double width,
    @Default(0.0) double strokeAlign,
    @Default(BorderStyle.solid) BorderStyle borderStyle,
  }) = _StacBorderSide;

  static const none = StacBorderSide(
    color: '000000',
    width: 0.0,
    strokeAlign: -1.0,
    borderStyle: BorderStyle.none,
  );

  factory StacBorderSide.fromJson(Map<String, dynamic> json) =>
      _$StacBorderSideFromJson(json);
}

extension StacBorderSideParser on StacBorderSide? {
  BorderSide parse(BuildContext context) {
    return BorderSide(
      color: this?.color.toColor(context) ?? const Color(0xFF000000),
      width: this?.width ?? 0.0,
      style: this?.borderStyle ?? BorderStyle.solid,
      strokeAlign: this?.strokeAlign ?? 0.0,
    );
  }
}
