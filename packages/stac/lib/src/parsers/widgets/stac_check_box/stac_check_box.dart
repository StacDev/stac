import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_material_color/stac_material_color.dart';
import 'package:stac/src/parsers/widgets/stac_mouse_cursor/stac_mouse_cursor.dart';

export 'stac_check_box_parser.dart';

part 'stac_check_box.freezed.dart';
part 'stac_check_box.g.dart';

@freezed
abstract class StacCheckBox with _$StacCheckBox {
  const factory StacCheckBox({
    String? id,
    bool? value,
    @Default(false) bool tristate,
    Map<String, dynamic>? onChanged,
    StacMouseCursor? mouseCursor,
    String? activeColor,
    StacMaterialColor? fillColor,
    String? checkColor,
    String? focusColor,
    String? hoverColor,
    StacMaterialColor? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    @Default(false) bool autofocus,
    @Default(false) bool isError,
  }) = _StacCheckBox;

  factory StacCheckBox.fromJson(Map<String, dynamic> json) =>
      _$StacCheckBoxFromJson(json);
}
