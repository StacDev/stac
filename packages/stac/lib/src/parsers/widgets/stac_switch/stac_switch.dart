import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_material_color/stac_material_color.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_switch_parser.dart';

part 'stac_switch.freezed.dart';
part 'stac_switch.g.dart';

enum StacSwitchType { adaptive, cupertino, material }

@freezed
abstract class StacSwitch with _$StacSwitch {
  const factory StacSwitch({
    @Default(StacSwitchType.material) StacSwitchType switchType,
    @Default(false) value,
    Map<String, dynamic>? onChanged,
    @Default(false) bool autofocus,
    String? activeColor,
    String? activeTrackColor,
    String? focusColor,
    String? hoverColor,
    String? inactiveThumbColor,
    String? inactiveTrackColor,
    String? onLabelColor,
    String? offLabelColor,
    StacDouble? splashRadius,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    StacMaterialColor? overlayColor,
    StacMaterialColor? thumbColor,
    StacMaterialColor? trackColor,
    MaterialTapTargetSize? materialTapTargetSize,
    StacMaterialColor? trackOutlineColor,
    StacDouble? trackOutlineWidth,
    Map<String, dynamic>? thumbIcon,
    String? inactiveThumbImage,
    String? activeThumbImage,
    bool? applyTheme,
    bool? applyCupertinoTheme,
  }) = _StacSwitch;

  factory StacSwitch.fromJson(Map<String, dynamic> json) =>
      _$StacSwitchFromJson(json);
}
