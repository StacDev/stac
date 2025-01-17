import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

part 'mirai_beveled_rectangle_border.freezed.dart';
part 'mirai_beveled_rectangle_border.g.dart';

@freezed
class MiraiBeveledRectangleBorder with _$MiraiBeveledRectangleBorder {
  const factory MiraiBeveledRectangleBorder({
    @Default(MiraiBorderSide.none()) MiraiBorderSide side,
    @Default(MiraiBorderRadius()) MiraiBorderRadius borderRadius,
  }) = _MiraiBeveledRectangleBorder;

  factory MiraiBeveledRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$MiraiBeveledRectangleBorderFromJson(json);
}

extension MiralBeveledRactangleBorderParser on MiraiBeveledRectangleBorder {
  ShapeBorder parse(BuildContext context) {
    return BeveledRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
