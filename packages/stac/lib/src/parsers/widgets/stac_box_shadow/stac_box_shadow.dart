import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_offset/stac_offset.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_box_shadow.freezed.dart';
part 'stac_box_shadow.g.dart';

@freezed
abstract class StacBoxShadow with _$StacBoxShadow {
  const factory StacBoxShadow({
    String? color,
    @Default(StacDouble.zero) StacDouble? blurRadius,
    @Default(StacOffset(dx: StacDouble.zero, dy: StacDouble.zero))
    StacOffset offset,
    @Default(StacDouble.zero) StacDouble? spreadRadius,
    @Default(BlurStyle.normal) BlurStyle? blurStyle,
  }) = _StacBoxShadow;

  factory StacBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$StacBoxShadowFromJson(json);
}

extension StacBoxShadowParser on StacBoxShadow? {
  BoxShadow parse(BuildContext context) {
    return BoxShadow(
      color: this?.color.toColor(context) ?? const Color(0xFF000000),
      blurRadius: this?.blurRadius?.parse ?? 0.0,
      offset: this?.offset.parse ?? Offset.zero,
      spreadRadius: this?.spreadRadius?.parse ?? 0.0,
      blurStyle: this?.blurStyle ?? BlurStyle.normal,
    );
  }
}
