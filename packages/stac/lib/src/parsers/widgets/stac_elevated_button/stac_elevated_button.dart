import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';

export 'stac_elevated_button_parser.dart';

part 'stac_elevated_button.freezed.dart';
part 'stac_elevated_button.g.dart';

@freezed
abstract class StacElevatedButton with _$StacElevatedButton {
  const factory StacElevatedButton({
    Map<String, dynamic>? onPressed,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onHover,
    Map<String, dynamic>? onFocusChange,
    StacButtonStyle? style,
    @Default(false) bool autofocus,
    @Default(Clip.none) Clip clipBehavior,
    required Map<String, dynamic> child,
  }) = _StacElevatedButton;

  factory StacElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$StacElevatedButtonFromJson(json);
}
