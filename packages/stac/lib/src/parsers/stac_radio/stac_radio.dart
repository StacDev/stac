import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_mouse_cursor/stac_mouse_cursor.dart';
import 'package:stac/stac.dart';

export 'package:stac/src/parsers/stac_radio/stac_radio_parser.dart';

part 'stac_radio.freezed.dart';
part 'stac_radio.g.dart';

enum StacRadioType { adaptive, cupertino, material }

@freezed
abstract class StacRadio with _$StacRadio {
  const factory StacRadio({
    @Default(StacRadioType.material) StacRadioType radioType,
    dynamic value,
    Map<String, dynamic>? onChanged,
    StacMouseCursor? mouseCursor,
    @Default(false) bool toggleable,
    String? activeColor,
    String? inactiveColor,
    String? fillColor,
    String? focusColor,
    String? hoverColor,
    String? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    StacVisualDensity? visualDensity,
    @Default(false) bool autofocus,
    @Default(false) bool useCheckmarkStyle,
    @Default(false) bool useCupertinoCheckmarkStyle,
  }) = _StacRadio;

  factory StacRadio.fromJson(Map<String, dynamic> json) =>
      _$StacRadioFromJson(json);
}
