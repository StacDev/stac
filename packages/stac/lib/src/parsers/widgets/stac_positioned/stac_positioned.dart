import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_rect/stac_rect.dart';

export 'stac_positioned_parser.dart';

part 'stac_positioned.freezed.dart';
part 'stac_positioned.g.dart';

/*
* TODO :: Add support for fromRelativeRect
*  enum StacPositionedType { directional, fill, fromRect, fromRelativeRect}
*/

enum StacPositionedType { directional, fill, fromRect }

@freezed
abstract class StacPositioned with _$StacPositioned {
  const factory StacPositioned({
    StacPositionedType? positionedType,
    StacDouble? left,
    StacDouble? top,
    StacDouble? right,
    StacDouble? bottom,
    StacDouble? width,
    StacDouble? height,
    StacDouble? start,
    StacDouble? end,
    @Default(TextDirection.ltr) TextDirection textDirection,
    StacRect? rect,
    Map<String, dynamic>? child,
  }) = _StacPositioned;

  factory StacPositioned.fromJson(Map<String, dynamic> json) =>
      _$StacPositionedFromJson(json);
}
