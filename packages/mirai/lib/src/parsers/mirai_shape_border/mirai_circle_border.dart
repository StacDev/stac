import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

part 'mirai_circle_border.freezed.dart';
part 'mirai_circle_border.g.dart';

@freezed
class MiralCircleBorder with _$MiralCircleBorder {
  const factory MiralCircleBorder({
    @Default(MiraiBorderSide.none()) MiraiBorderSide side,
    @Default(0.0) double eccentricity,
  }) = _MiralCircleBorder;

  factory MiralCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$MiralCircleBorderFromJson(json);
}

extension MiraiCircleBorderParser on MiralCircleBorder {
  ShapeBorder parse(BuildContext context) {
    return CircleBorder(
      side: side.parse(context),
      eccentricity: eccentricity,
    );
  }
}
