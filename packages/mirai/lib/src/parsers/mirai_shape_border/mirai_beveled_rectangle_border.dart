import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

part 'mirai_beveled_rectangle_border.freezed.dart';
part 'mirai_beveled_rectangle_border.g.dart';

@freezed
class MiralBeveledRectangleBorder with _$MiralBeveledRectangleBorder {
  const factory MiralBeveledRectangleBorder({
    @Default(MiraiBorderSide.none()) MiraiBorderSide side,
    @Default(MiraiBorderRadius()) MiraiBorderRadius borderRadius,
  }) = _MiralBeveledRectangleBorder;

  factory MiralBeveledRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$MiralBeveledRectangleBorderFromJson(json);
}

extension MiralBeveledRactangleBorderParser on MiralBeveledRectangleBorder {
  ShapeBorder parse(BuildContext context) {
    return BeveledRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
