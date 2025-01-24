import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "package:mirai/src/parsers/mirai_button_style/mirai_button_style.dart";

export 'mirai_filled_button_parser.dart';

part 'mirai_filled_button.freezed.dart';
part 'mirai_filled_button.g.dart';

@freezed
class MiraiFilledButton with _$MiraiFilledButton {
  const factory MiraiFilledButton({
    Map<String, dynamic>? onPressed,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onHover,
    Map<String, dynamic>? onFocusChange,
    MiraiButtonStyle? style,
    @Default(false) bool autofocus,
    @Default(Clip.none) Clip clipBehavior,
    Map<String, dynamic>? child,
    @Default(IconAlignment.start) IconAlignment iconAlignment,
  }) = _MiraiFilledButton;

  factory MiraiFilledButton.fromJson(Map<String, dynamic> json) =>
      _$MiraiFilledButtonFromJson(json);
}
