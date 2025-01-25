import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_button_style/mirai_button_style.dart';

export 'package:mirai/src/parsers/mirai_text_button/mirai_text_button_parser.dart';

part 'mirai_text_button.freezed.dart';
part 'mirai_text_button.g.dart';

@freezed
class MiraiTextButton with _$MiraiTextButton {
  const factory MiraiTextButton({
    Map<String, dynamic>? onPressed,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onHover,
    Map<String, dynamic>? onFocusChange,
    MiraiButtonStyle? style,
    @Default(false) autofocus,
    @Default(Clip.none) Clip clipBehavior,
    @Default(true) bool isSemanticButton,
    required Map<String, dynamic> child,
    @Default(IconAlignment.start) IconAlignment iconAlignment,
  }) = _MiraiTextButton;

  factory MiraiTextButton.fromJson(Map<String, dynamic> json) =>
      _$MiraiTextButtonFromJson(json);
}
