import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

part 'mirai_continous_rectangle_border.freezed.dart';
part 'mirai_continous_rectangle_border.g.dart';

@freezed
class MiralContinousRectangleBorder with _$MiralContinousRectangleBorder {
  const factory MiralContinousRectangleBorder({
    @Default(MiraiBorderSide.none()) MiraiBorderSide side,
    @Default(MiraiBorderRadius()) MiraiBorderRadius borderRadius,
  }) = _MiralContinousRectangleBorder;

  factory MiralContinousRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$MiralContinousRectangleBorderFromJson(json);
}

extension MiralContinousRectangleBorderParser on MiralContinousRectangleBorder {
  ShapeBorder parse(BuildContext context) {
    return ContinuousRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
