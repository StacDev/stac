import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/stac.dart';

part 'stac_rounded_rectangle_border.freezed.dart';
part 'stac_rounded_rectangle_border.g.dart';

@freezed
abstract class StacRoundedRectangleBorder with _$StacRoundedRectangleBorder {
  const factory StacRoundedRectangleBorder({
    StacBorderSide? side,
    StacBorderRadius? borderRadius,
  }) = _StacRoundedRectangleBorder;

  factory StacRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacRoundedRectangleBorderFromJson(json);
}

extension StacRoundedRectangleBorderParser on StacRoundedRectangleBorder? {
  RoundedRectangleBorder parse(BuildContext context) {
    return RoundedRectangleBorder(
      side: this?.side.parse(context) ?? BorderSide.none,
      borderRadius: this?.borderRadius.parse ?? BorderRadius.zero,
    );
  }
}
