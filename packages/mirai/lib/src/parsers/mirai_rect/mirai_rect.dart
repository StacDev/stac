import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_offset/mirai_offset.dart';

part 'mirai_rect.freezed.dart';
part 'mirai_rect.g.dart';

enum MiraiRectType { fromCenter, fromCircle, fromLTRB, fromLTWH, fromPoints }

@freezed
class MiraiRect with _$MiraiRect {
  const factory MiraiRect({
    required MiraiRectType rectType,
    MiraiOffset? center,
    MiraiOffset? a,
    MiraiOffset? b,
    double? width,
    double? height,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? radius,
  }) = _MiraiRect;

  factory MiraiRect.fromJson(Map<String, dynamic> json) =>
      _$MiraiRectFromJson(json);
}

extension MiraiRectParser on MiraiRect {
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
      case MiraiRectType.fromCenter:
        return fromCenter();
      case MiraiRectType.fromCircle:
        return fromCircle();
      case MiraiRectType.fromLTRB:
        return fromLTRB();
      case MiraiRectType.fromLTWH:
        return fromLTWH();
      case MiraiRectType.fromPoints:
        return fromPoints();
    }
  }
}
