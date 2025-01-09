import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/parsers/mirai_mouse_cursor/mirai_mouse_cursor.dart';

export 'package:mirai/src/parsers/mirai_radio/mirai_radio_parser.dart';

part 'mirai_radio.freezed.dart';
part 'mirai_radio.g.dart';

enum MiraiRadioType { adaptive, cupertino, material }

@freezed
class MiraiRadio with _$MiraiRadio {
  const factory MiraiRadio({
    @Default(MiraiRadioType.material) MiraiRadioType radioType,
    dynamic value,
    Map<String, dynamic>? onChanged,
    MiraiMouseCursor? mouseCursor,
    @Default(false) bool toggleable,
    String? activeColor,
    String? inactiveColor,
    String? fillColor,
    String? focusColor,
    String? hoverColor,
    String? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    MiraiVisualDensity? visualDensity,
    @Default(false) bool autofocus,
    @Default(false) bool useCheckmarkStyle,
    @Default(false) bool useCupertinoCheckmarkStyle,
  }) = _MiraiRadio;

  factory MiraiRadio.fromJson(Map<String, dynamic> json) =>
      _$MiraiRadioFromJson(json);
}
