import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_button_style/mirai_button_style.dart';

export 'package:mirai/src/parsers/mirai_outlined_button/mirai_outlined_button_parser.dart';

part 'mirai_outlined_button.freezed.dart';
part 'mirai_outlined_button.g.dart';

@freezed
class MiraiOutlinedButton with _$MiraiOutlinedButton {
  const factory MiraiOutlinedButton({
    Map<String, dynamic>? onPressed,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onHover,
    Map<String, dynamic>? onFocusChange,
    MiraiButtonStyle? style,
    @Default(false) autofocus,
    @Default(Clip.none) Clip clipBehavior,
    required Map<String, dynamic> child,
    @Default(IconAlignment.start) IconAlignment iconAlignment,
  }) = _MiraiOutlinedButton;

  factory MiraiOutlinedButton.fromJson(Map<String, dynamic> json) =>
      _$MiraiOutlinedButtonFromJson(json);
}
