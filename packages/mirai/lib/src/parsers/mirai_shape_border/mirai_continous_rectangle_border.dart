import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

part 'mirai_continous_rectangle_border.freezed.dart';
part 'mirai_continous_rectangle_border.g.dart';

@freezed
class MiraiContinousRectangleBorder with _$MiraiContinousRectangleBorder {
  const factory MiraiContinousRectangleBorder({
    @Default(MiraiBorderSide.none()) MiraiBorderSide side,
    @Default(MiraiBorderRadius()) MiraiBorderRadius borderRadius,
  }) = _MiraiContinousRectangleBorder;

  factory MiraiContinousRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$MiraiContinousRectangleBorderFromJson(json);
}

extension MiralContinousRectangleBorderParser on MiraiContinousRectangleBorder {
  ShapeBorder parse(BuildContext context) {
    return ContinuousRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
