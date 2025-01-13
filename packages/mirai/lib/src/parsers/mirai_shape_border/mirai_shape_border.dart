import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'mirai_beveled_rectangle_border.dart';
import 'mirai_circle_border.dart';
import 'mirai_continous_rectangle_border.dart';
import 'mirai_rounded_rectangle_border.dart';

part 'mirai_shape_border.freezed.dart';
part 'mirai_shape_border.g.dart';

enum MiraiShapeBorderType {
  circleBorder,
  roundedRectangleBorder,
  continuousRectangleBorder,
  beveledRectangleBorder,
}

@freezed
class MiralShapeBorder with _$MiralShapeBorder {
  const factory MiralShapeBorder({
    required MiraiShapeBorderType borderType,
    required Map<String, dynamic> data,
  }) = _MiralShapeBorder;

  factory MiralShapeBorder.fromJson(Map<String, dynamic> json) =>
      _$MiralShapeBorderFromJson(json);
}

extension MiralShapeBorderParser on MiralShapeBorder {
  ShapeBorder parse(BuildContext context) {
    switch (borderType) {
      case MiraiShapeBorderType.circleBorder:
        return MiralCircleBorder.fromJson(data).parse(context);
      case MiraiShapeBorderType.roundedRectangleBorder:
        return MiralRoundedRactangleBorder.fromJson(data).parse(context);
      case MiraiShapeBorderType.continuousRectangleBorder:
        return MiralContinousRectangleBorder.fromJson(data).parse(context);
      case MiraiShapeBorderType.beveledRectangleBorder:
        return MiralBeveledRectangleBorder.fromJson(data).parse(context);
    }
  }
}
