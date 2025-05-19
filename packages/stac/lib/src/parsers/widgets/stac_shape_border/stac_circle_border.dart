import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/stac.dart';

part 'stac_circle_border.freezed.dart';
part 'stac_circle_border.g.dart';

@freezed
abstract class StacCircleBorder with _$StacCircleBorder {
  const factory StacCircleBorder({
    @Default(StacBorderSide.none) StacBorderSide side,
    @Default(StacDouble.zero) StacDouble eccentricity,
  }) = _StacCircleBorder;

  factory StacCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacCircleBorderFromJson(json);
}

extension StacCircleBorderParser on StacCircleBorder {
  ShapeBorder parse(BuildContext context) {
    return CircleBorder(
      side: side.parse(context),
      eccentricity: eccentricity.parse,
    );
  }
}
