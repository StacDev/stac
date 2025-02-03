import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/stac.dart';

part 'stac_continous_rectangle_border.freezed.dart';
part 'stac_continous_rectangle_border.g.dart';

@freezed
class StacContinousRectangleBorder with _$StacContinousRectangleBorder {
  const factory StacContinousRectangleBorder({
    @Default(StacBorderSide.none()) StacBorderSide side,
    @Default(StacBorderRadius()) StacBorderRadius borderRadius,
  }) = _StacContinousRectangleBorder;

  factory StacContinousRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacContinousRectangleBorderFromJson(json);
}

extension MiralContinousRectangleBorderParser on StacContinousRectangleBorder {
  ShapeBorder parse(BuildContext context) {
    return ContinuousRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
