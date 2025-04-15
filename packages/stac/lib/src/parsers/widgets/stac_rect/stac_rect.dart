import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_offset/stac_offset.dart';

part 'stac_rect.freezed.dart';
part 'stac_rect.g.dart';

enum StacRectType { fromCenter, fromCircle, fromLTRB, fromLTWH, fromPoints }

@freezed
abstract class StacRect with _$StacRect {
  const factory StacRect({
    required StacRectType rectType,
    StacOffset? center,
    StacOffset? a,
    StacOffset? b,
    double? width,
    double? height,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? radius,
  }) = _StacRect;

  factory StacRect.fromJson(Map<String, dynamic> json) =>
      _$StacRectFromJson(json);
}

extension StacRectParser on StacRect {
  Rect? get parse {
    Rect fromCenter() => Rect.fromCenter(
          center: center?.parse ?? Offset.zero,
          width: width ?? 0.0,
          height: height ?? 0.0,
        );
    Rect fromCircle() => Rect.fromCircle(
          center: center?.parse ?? Offset.zero,
          radius: radius ?? 0.0,
        );
    Rect fromLTRB() => Rect.fromLTRB(
          left ?? 0.0,
          top ?? 0.0,
          right ?? 0.0,
          bottom ?? 0.0,
        );
    Rect fromLTWH() => Rect.fromLTWH(
          left ?? 0.0,
          top ?? 0.0,
          width ?? 0.0,
          height ?? 0.0,
        );
    Rect fromPoints() => Rect.fromPoints(
          a?.parse ?? Offset.zero,
          b?.parse ?? Offset.zero,
        );

    switch (rectType) {
      case StacRectType.fromCenter:
        return fromCenter();
      case StacRectType.fromCircle:
        return fromCircle();
      case StacRectType.fromLTRB:
        return fromLTRB();
      case StacRectType.fromLTWH:
        return fromLTWH();
      case StacRectType.fromPoints:
        return fromPoints();
    }
  }
}
