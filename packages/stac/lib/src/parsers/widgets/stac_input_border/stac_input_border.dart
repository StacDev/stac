import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/framework/ui/stac_outline_input_border.dart';
import 'package:stac/src/parsers/widgets/stac_border_radius/stac_border_radius.dart';
import 'package:stac/src/parsers/widgets/stac_gradient/stac_gradient.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_input_border.freezed.dart';
part 'stac_input_border.g.dart';

enum StacInputBorderType { none, underlineInputBorder, outlineInputBorder }

@freezed
abstract class StacInputBorder with _$StacInputBorder {
  const factory StacInputBorder({
    @Default(StacInputBorderType.underlineInputBorder) StacInputBorderType type,
    StacBorderRadius? borderRadius,
    @Default(4.0) double gapPadding,
    @Default(0.0) double width,
    String? color,
    StacGradient? gradient,
  }) = _StacInputBorder;

  factory StacInputBorder.fromJson(Map<String, dynamic> json) =>
      _$StacInputBorderFromJson(json);
}

extension StacInputBorderParser on StacInputBorder {
  InputBorder parse(BuildContext context) {
    switch (type) {
      case StacInputBorderType.none:
        return InputBorder.none;
      case StacInputBorderType.underlineInputBorder:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: color?.toColor(context) ?? Colors.black,
            width: width,
          ),
          borderRadius: borderRadius.parse,
        );
      case StacInputBorderType.outlineInputBorder:
        return StacOutlineInputBorder(
          width: width,
          borderRadius: borderRadius.parse,
          gapPadding: gapPadding,
          color: color?.toColor(context) ?? Colors.black,
          gradient: gradient?.parse(context),
        );
    }
  }
}
