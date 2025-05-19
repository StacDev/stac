import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_border.freezed.dart';
part 'stac_border.g.dart';

@freezed
abstract class StacBorder with _$StacBorder {
  const factory StacBorder({
    String? color,
    @Default(BorderStyle.solid) BorderStyle borderStyle,
    @Default(StacDouble(1.0)) StacDouble width,
    @Default(StacDouble(BorderSide.strokeAlignInside)) StacDouble strokeAlign,
  }) = _StacBorder;

  factory StacBorder.fromJson(Map<String, dynamic> json) =>
      _$StacBorderFromJson(json);
}

extension StacBorderParser on StacBorder {
  Border parse(BuildContext context) {
    return Border.all(
      color: color.toColor(context) ?? const Color(0xFF000000),
      width: width.parse,
      style: borderStyle,
      strokeAlign: strokeAlign.parse,
    );
  }
}
