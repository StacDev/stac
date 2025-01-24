import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_button_style/mirai_button_style.dart';

export 'package:mirai/src/parsers/mirai_elevated_button/mirai_elevated_button_parser.dart';

part 'mirai_elevated_button.freezed.dart';
part 'mirai_elevated_button.g.dart';

@freezed
class MiraiElevatedButton with _$MiraiElevatedButton {
  const factory MiraiElevatedButton({
    Map<String, dynamic>? onPressed,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onHover,
    Map<String, dynamic>? onFocusChange,
    MiraiButtonStyle? style,
    @Default(false) bool autofocus,
    @Default(Clip.none) Clip clipBehavior,
    required Map<String, dynamic> child,
    @Default(IconAlignment.start) IconAlignment iconAlignment,
  }) = _MiraiElevatedButton;

  factory MiraiElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$MiraiElevatedButtonFromJson(json);
}
