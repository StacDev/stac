import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_mouse_cursor/stac_mouse_cursor.dart';

export 'package:stac/src/parsers/stac_slider/stac_slider_parser.dart';

part 'stac_slider.freezed.dart';
part 'stac_slider.g.dart';

enum StacSliderType { adaptive, cupertino, material }

@freezed
abstract class StacSlider with _$StacSlider {
  const factory StacSlider({
    String? id,
    @Default(StacSliderType.material) StacSliderType sliderType,
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
    StacMouseCursor? mouseCursor,
    @Default(false) bool autofocus,
    SliderInteraction? allowedInteraction,
  }) = _StacSlider;

  factory StacSlider.fromJson(Map<String, dynamic> json) =>
      _$StacSliderFromJson(json);
}
