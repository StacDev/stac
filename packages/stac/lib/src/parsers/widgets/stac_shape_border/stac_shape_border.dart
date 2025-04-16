import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'stac_beveled_rectangle_border.dart';
import 'stac_circle_border.dart';
import 'stac_continous_rectangle_border.dart';
import 'stac_rounded_rectangle_border.dart';

part 'stac_shape_border.freezed.dart';
part 'stac_shape_border.g.dart';

enum StacShapeBorderType {
  circleBorder,
  roundedRectangleBorder,
  continuousRectangleBorder,
  beveledRectangleBorder,
}

@freezed
abstract class StacShapeBorder with _$StacShapeBorder {
  const factory StacShapeBorder({
    required StacShapeBorderType borderType,
    required Map<String, dynamic> data,
  }) = _StacShapeBorder;

  factory StacShapeBorder.fromJson(Map<String, dynamic> json) =>
      _$StacShapeBorderFromJson(json);
}

extension StacShapeBorderParser on StacShapeBorder {
  ShapeBorder parse(BuildContext context) {
    switch (borderType) {
      case StacShapeBorderType.circleBorder:
        return StacCircleBorder.fromJson(data).parse(context);
      case StacShapeBorderType.roundedRectangleBorder:
        return StacRoundedRactangleBorder.fromJson(data).parse(context);
      case StacShapeBorderType.continuousRectangleBorder:
        return StacContinousRectangleBorder.fromJson(data).parse(context);
      case StacShapeBorderType.beveledRectangleBorder:
        return StacBeveledRectangleBorder.fromJson(data).parse(context);
    }
  }
}
