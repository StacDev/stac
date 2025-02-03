import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/stac.dart';

part 'stac_beveled_rectangle_border.freezed.dart';
part 'stac_beveled_rectangle_border.g.dart';

@freezed
class StacBeveledRectangleBorder with _$StacBeveledRectangleBorder {
  const factory StacBeveledRectangleBorder({
    @Default(StacBorderSide.none()) StacBorderSide side,
    @Default(StacBorderRadius()) StacBorderRadius borderRadius,
  }) = _StacBeveledRectangleBorder;

  factory StacBeveledRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacBeveledRectangleBorderFromJson(json);
}

extension MiralBeveledRactangleBorderParser on StacBeveledRectangleBorder {
  ShapeBorder parse(BuildContext context) {
    return BeveledRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
