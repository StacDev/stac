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
class MiraiShapeBorder with _$MiraiShapeBorder {
  const factory MiraiShapeBorder({
    required MiraiShapeBorderType borderType,
    required Map<String, dynamic> data,
  }) = _MiraiShapeBorder;

  factory MiraiShapeBorder.fromJson(Map<String, dynamic> json) =>
      _$MiraiShapeBorderFromJson(json);
}

extension MiralShapeBorderParser on MiraiShapeBorder {
  ShapeBorder parse(BuildContext context) {
    switch (borderType) {
      case MiraiShapeBorderType.circleBorder:
        return MiraiCircleBorder.fromJson(data).parse(context);
      case MiraiShapeBorderType.roundedRectangleBorder:
        return MiraiRoundedRactangleBorder.fromJson(data).parse(context);
      case MiraiShapeBorderType.continuousRectangleBorder:
        return MiraiContinousRectangleBorder.fromJson(data).parse(context);
      case MiraiShapeBorderType.beveledRectangleBorder:
        return MiraiBeveledRectangleBorder.fromJson(data).parse(context);
    }
  }
}
