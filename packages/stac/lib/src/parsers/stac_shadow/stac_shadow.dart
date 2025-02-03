import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_offset/stac_offset.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_shadow.freezed.dart';
part 'stac_shadow.g.dart';

@freezed
class StacShadow with _$StacShadow {
  const factory StacShadow({
    @Default('#000000') String color,
    @Default(StacOffset(dx: 0, dy: 0)) StacOffset offset,
    @Default(0.0) double blurRadius,
  }) = _StacShadow;

  factory StacShadow.fromJson(Map<String, dynamic> json) =>
      _$StacShadowFromJson(json);
}

extension StacShadowParser on StacShadow {
  Shadow parse(BuildContext context) {
    return Shadow(
      color: color.toColor(context)!,
      offset: offset.parse,
      blurRadius: blurRadius,
    );
  }
}
