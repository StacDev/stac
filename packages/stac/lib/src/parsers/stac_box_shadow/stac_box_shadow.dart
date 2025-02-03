import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_offset/stac_offset.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_box_shadow.freezed.dart';
part 'stac_box_shadow.g.dart';

@freezed
class StacBoxShadow with _$StacBoxShadow {
  const factory StacBoxShadow({
    String? color,
    @Default(0.0) double? blurRadius,
    @Default(StacOffset(dx: 0, dy: 0)) StacOffset offset,
    @Default(0.0) double? spreadRadius,
    @Default(BlurStyle.normal) BlurStyle? blurStyle,
  }) = _StacBoxShadow;

  factory StacBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$StacBoxShadowFromJson(json);
}

extension StacBoxShadowParser on StacBoxShadow? {
  BoxShadow parse(BuildContext context) {
    return BoxShadow(
      color: this?.color.toColor(context) ?? const Color(0xFF000000),
      blurRadius: this?.blurRadius ?? 0.0,
      offset: this?.offset.parse ?? Offset.zero,
      spreadRadius: this?.spreadRadius ?? 0.0,
      blurStyle: this?.blurStyle ?? BlurStyle.normal,
    );
  }
}
