import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_mouse_cursor/mirai_mouse_cursor.dart';

export 'package:mirai/src/parsers/mirai_slider/mirai_slider_parser.dart';

part 'mirai_slider.freezed.dart';
part 'mirai_slider.g.dart';

enum MiraiSliderType { adaptive, cupertino, material }

@freezed
class MiraiSlider with _$MiraiSlider {
  const factory MiraiSlider({
    String? id,
    @Default(MiraiSliderType.material) MiraiSliderType sliderType,
    required double value,
    double? secondaryTrackValue,
    Map<String, dynamic>? onChanged,
    Map<String, dynamic>? onChangeStart,
    Map<String, dynamic>? onChangeEnd,
    @Default(0.0) double min,
    @Default(1.0) double max,
    int? divisions,
    String? label,
    String? activeColor,
    String? inactiveColor,
    String? secondaryActiveColor,
    String? thumbColor,
    String? overlayColor,
    MiraiMouseCursor? mouseCursor,
    @Default(false) bool autofocus,
    SliderInteraction? allowedInteraction,
  }) = _MiraiSlider;

  factory MiraiSlider.fromJson(Map<String, dynamic> json) =>
      _$MiraiSliderFromJson(json);
}
