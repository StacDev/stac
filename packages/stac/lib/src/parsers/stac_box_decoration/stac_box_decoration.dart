import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_border/stac_border.dart';
import 'package:stac/src/parsers/stac_border_radius/stac_border_radius.dart';
import 'package:stac/src/parsers/stac_box_shadow/stac_box_shadow.dart';
import 'package:stac/src/parsers/stac_decoration_image/stac_decoration_image.dart';
import 'package:stac/src/parsers/stac_gradient/stac_gradient.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_box_decoration.freezed.dart';
part 'stac_box_decoration.g.dart';

@freezed
class StacBoxDecoration with _$StacBoxDecoration {
  const factory StacBoxDecoration({
    String? color,
    BlendMode? backgroundBlendMode,
    List<StacBoxShadow?>? boxShadow,
    @Default(BoxShape.rectangle) BoxShape shape,
    StacBorder? border,
    StacBorderRadius? borderRadius,
    StacDecorationImage? image,
    StacGradient? gradient,
  }) = _StacBoxDecoration;

  factory StacBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$StacBoxDecorationFromJson(json);
}

extension StacBoxDecorationParser on StacBoxDecoration? {
  BoxDecoration? parse(BuildContext context) {
    return BoxDecoration(
      color: this?.color.toColor(context),
      backgroundBlendMode: this?.backgroundBlendMode,
      boxShadow: this?.boxShadow?.map((elem) => elem.parse(context)).toList(),
      shape: this?.shape ?? BoxShape.rectangle,
      border: this?.border?.parse(context),
      borderRadius: this?.borderRadius.parse,
      image: this?.image.parse,
      gradient: this?.gradient?.parse(context),
    );
  }
}
