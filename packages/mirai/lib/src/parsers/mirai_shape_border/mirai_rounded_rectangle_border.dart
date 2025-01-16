import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

part 'mirai_rounded_rectangle_border.freezed.dart';
part 'mirai_rounded_rectangle_border.g.dart';

@freezed
class MiraiRoundedRactangleBorder with _$MiraiRoundedRactangleBorder {
  const factory MiraiRoundedRactangleBorder({
    @Default(MiraiBorderSide.none()) MiraiBorderSide side,
    @Default(MiraiBorderRadius()) MiraiBorderRadius borderRadius,
  }) = _MiraiRoundedRactangleBorder;

  factory MiraiRoundedRactangleBorder.fromJson(Map<String, dynamic> json) =>
      _$MiraiRoundedRactangleBorderFromJson(json);
}

extension MiralRoundedRactangleBorderParser on MiraiRoundedRactangleBorder {
  ShapeBorder parse(BuildContext context) {
    return RoundedRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
