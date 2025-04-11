import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/stac.dart';

part 'stac_rounded_rectangle_border.freezed.dart';
part 'stac_rounded_rectangle_border.g.dart';

@freezed
abstract class StacRoundedRactangleBorder with _$StacRoundedRactangleBorder {
  const factory StacRoundedRactangleBorder({
    @Default(StacBorderSide.none) StacBorderSide side,
    @Default(StacBorderRadius()) StacBorderRadius borderRadius,
  }) = _StacRoundedRactangleBorder;

  factory StacRoundedRactangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacRoundedRactangleBorderFromJson(json);
}

extension MiralRoundedRactangleBorderParser on StacRoundedRactangleBorder {
  ShapeBorder parse(BuildContext context) {
    return RoundedRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
