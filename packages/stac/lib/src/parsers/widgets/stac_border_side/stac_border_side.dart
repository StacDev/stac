import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_border_side.freezed.dart';
part 'stac_border_side.g.dart';

@freezed
abstract class StacBorderSide with _$StacBorderSide {
  const factory StacBorderSide({
    String? color,
    @Default(StacDouble(1.0)) StacDouble width,
    @Default(StacDouble(BorderSide.strokeAlignInside)) StacDouble strokeAlign,
    @Default(BorderStyle.solid) BorderStyle borderStyle,
  }) = _StacBorderSide;

  static const none = StacBorderSide(
    width: StacDouble.zero,
    borderStyle: BorderStyle.none,
  );

  factory StacBorderSide.fromJson(Map<String, dynamic> json) =>
      _$StacBorderSideFromJson(json);
}

extension StacBorderSideParser on StacBorderSide? {
  BorderSide parse(BuildContext context) {
    return BorderSide(
      color: this?.color.toColor(context) ?? const Color(0xFF000000),
      width: this?.width.parse ?? 1.0,
      style: this?.borderStyle ?? BorderStyle.solid,
      strokeAlign: this?.strokeAlign.parse ?? BorderSide.strokeAlignInside,
    );
  }
}
