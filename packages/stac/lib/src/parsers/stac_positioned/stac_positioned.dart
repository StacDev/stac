import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_rect/stac_rect.dart';

export 'package:stac/src/parsers/stac_positioned/stac_positioned_parser.dart';

part 'stac_positioned.freezed.dart';
part 'stac_positioned.g.dart';

/*
* TODO :: Add support for fromRelativeRect
*  enum StacPositionedType { directional, fill, fromRect, fromRelativeRect}
*/

enum StacPositionedType { directional, fill, fromRect }

@freezed
class StacPositioned with _$StacPositioned {
  const factory StacPositioned({
    StacPositionedType? positionedType,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
    double? start,
    double? end,
    @Default(TextDirection.ltr) TextDirection textDirection,
    StacRect? rect,
    Map<String, dynamic>? child,
  }) = _StacPositioned;

  factory StacPositioned.fromJson(Map<String, dynamic> json) =>
      _$StacPositionedFromJson(json);
}
