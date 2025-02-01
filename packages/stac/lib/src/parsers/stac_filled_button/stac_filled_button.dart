import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "package:stac/src/parsers/stac_button_style/stac_button_style.dart";

export 'stac_filled_button_parser.dart';

part 'stac_filled_button.freezed.dart';
part 'stac_filled_button.g.dart';

@freezed
class StacFilledButton with _$StacFilledButton {
  const factory StacFilledButton({
    Map<String, dynamic>? onPressed,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onHover,
    Map<String, dynamic>? onFocusChange,
    StacButtonStyle? style,
    @Default(false) bool autofocus,
    @Default(Clip.none) Clip clipBehavior,
    Map<String, dynamic>? child,
    @Default(IconAlignment.start) IconAlignment iconAlignment,
  }) = _StacFilledButton;

  factory StacFilledButton.fromJson(Map<String, dynamic> json) =>
      _$StacFilledButtonFromJson(json);
}
