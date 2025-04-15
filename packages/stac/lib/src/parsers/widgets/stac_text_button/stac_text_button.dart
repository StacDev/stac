import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';

export 'stac_text_button_parser.dart';

part 'stac_text_button.freezed.dart';
part 'stac_text_button.g.dart';

@freezed
abstract class StacTextButton with _$StacTextButton {
  const factory StacTextButton({
    Map<String, dynamic>? onPressed,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onHover,
    Map<String, dynamic>? onFocusChange,
    StacButtonStyle? style,
    @Default(false) autofocus,
    @Default(Clip.none) Clip clipBehavior,
    @Default(true) bool isSemanticButton,
    required Map<String, dynamic> child,
  }) = _StacTextButton;

  factory StacTextButton.fromJson(Map<String, dynamic> json) =>
      _$StacTextButtonFromJson(json);
}
