import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_material_color/mirai_material_color.dart';
import 'package:mirai/src/parsers/mirai_mouse_cursor/mirai_mouse_cursor.dart';

export 'package:mirai/src/parsers/mirai_check_box/mirai_check_box_parser.dart';

part 'mirai_check_box.freezed.dart';
part 'mirai_check_box.g.dart';

@freezed
class MiraiCheckBox with _$MiraiCheckBox {
  const factory MiraiCheckBox({
    String? id,
    bool? value,
    @Default(false) bool tristate,
    Map<String, dynamic>? onChanged,
    MiraiMouseCursor? mouseCursor,
    String? activeColor,
    MiraiMaterialColor? fillColor,
    String? checkColor,
    String? focusColor,
    String? hoverColor,
    MiraiMaterialColor? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    @Default(false) bool autofocus,
    @Default(false) bool isError,
  }) = _MiraiCheckBox;

  factory MiraiCheckBox.fromJson(Map<String, dynamic> json) =>
      _$MiraiCheckBoxFromJson(json);
}
