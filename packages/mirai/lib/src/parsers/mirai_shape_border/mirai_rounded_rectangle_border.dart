import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

part 'mirai_rounded_rectangle_border.freezed.dart';
part 'mirai_rounded_rectangle_border.g.dart';

@freezed
class MiralRoundedRactangleBorder with _$MiralRoundedRactangleBorder {
  const factory MiralRoundedRactangleBorder({
    @Default(MiraiBorderSide.none()) MiraiBorderSide side,
    @Default(MiraiBorderRadius()) MiraiBorderRadius borderRadius,
  }) = _MiralRoundedRactangleBorder;

  factory MiralRoundedRactangleBorder.fromJson(Map<String, dynamic> json) =>
      _$MiralRoundedRactangleBorderFromJson(json);
}

extension MiralRoundedRactangleBorderParser on MiralRoundedRactangleBorder {
  ShapeBorder parse(BuildContext context) {
    return RoundedRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
