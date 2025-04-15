import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';

export 'stac_outlined_button_parser.dart';

part 'stac_outlined_button.freezed.dart';
part 'stac_outlined_button.g.dart';

@freezed
abstract class StacOutlinedButton with _$StacOutlinedButton {
  const factory StacOutlinedButton({
    Map<String, dynamic>? onPressed,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onHover,
    Map<String, dynamic>? onFocusChange,
    StacButtonStyle? style,
    @Default(false) autofocus,
    @Default(Clip.none) Clip clipBehavior,
    required Map<String, dynamic> child,
  }) = _StacOutlinedButton;

  factory StacOutlinedButton.fromJson(Map<String, dynamic> json) =>
      _$StacOutlinedButtonFromJson(json);
}
