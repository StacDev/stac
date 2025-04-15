import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_wrap_parser.dart';

part 'stac_wrap.freezed.dart';
part 'stac_wrap.g.dart';

@freezed
abstract class StacWrap with _$StacWrap {
  const factory StacWrap({
    @Default(Axis.horizontal) Axis direction,
    @Default(WrapAlignment.start) WrapAlignment alignment,
    @Default(0.0) double spacing,
    @Default(WrapAlignment.start) WrapAlignment runAlignment,
    @Default(0.0) double runSpacing,
    @Default(WrapCrossAlignment.start) WrapCrossAlignment crossAxisAlignment,
    TextDirection? textDirection,
    @Default(VerticalDirection.down) VerticalDirection verticalDirection,
    @Default(Clip.none) Clip clipBehavior,
    @Default([]) List<Map<String, dynamic>> children,
  }) = _StacWrap;

  factory StacWrap.fromJson(Map<String, dynamic> json) =>
      _$StacWrapFromJson(json);
}
