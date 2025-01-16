import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

part 'mirai_circle_border.freezed.dart';
part 'mirai_circle_border.g.dart';

@freezed
class MiraiCircleBorder with _$MiraiCircleBorder {
  const factory MiraiCircleBorder({
    @Default(MiraiBorderSide.none()) MiraiBorderSide side,
    @Default(0.0) double eccentricity,
  }) = _MiraiCircleBorder;

  factory MiraiCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$MiraiCircleBorderFromJson(json);
}

extension MiraiCircleBorderParser on MiraiCircleBorder {
  ShapeBorder parse(BuildContext context) {
    return CircleBorder(
      side: side.parse(context),
      eccentricity: eccentricity,
    );
  }
}
