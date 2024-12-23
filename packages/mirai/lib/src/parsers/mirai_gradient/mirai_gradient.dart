import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/parsers.dart';
import 'package:mirai/src/utils/color_utils.dart';

part 'mirai_gradient.freezed.dart';
part 'mirai_gradient.g.dart';

enum MiraiGradientType { linear, radial, sweep }

@freezed
class MiraiGradient with _$MiraiGradient {
  const factory MiraiGradient({
    required List<String> colors,
    List<double>? stops,
    @Default(MiraiAlignment.centerLeft) MiraiAlignment begin,
    @Default(MiraiAlignment.centerRight) MiraiAlignment end,
    @Default(MiraiAlignment.center) MiraiAlignment center,
    @Default(MiraiGradientType.linear) MiraiGradientType gradientType,
    MiraiAlignmentGeometry? focal,
    @Default(TileMode.clamp) TileMode tileMode,
    @Default(0.0) double focalRadius,
    @Default(0.5) double radius,
    @Default(0.0) double startAngle,
    @Default(math.pi * 2) double endAngle,
  }) = _MiraiGradient;

  factory MiraiGradient.fromJson(Map<String, dynamic> json) =>
      _$MiraiGradientFromJson(json);
}

extension MiraiGradientParser on MiraiGradient {
  Gradient? parse(BuildContext context) {
    Gradient linearGradient() => LinearGradient(
          colors: colors.map((e) => e.toColor(context)!).toList(),
          begin: begin.value,
          end: end.value,
          stops: stops,
          tileMode: tileMode,
        );

    Gradient radialGradient() => RadialGradient(
          colors: colors.map((e) => e.toColor(context)!).toList(),
          stops: stops,
          tileMode: tileMode,
          focal: focal?.parse,
          focalRadius: focalRadius,
          radius: radius,
          center: center.value,
        );

    Gradient sweepGradient() => SweepGradient(
          colors: colors.map((e) => e.toColor(context)!).toList(),
          stops: stops,
          center: center.value,
          startAngle: startAngle,
          endAngle: endAngle,
          tileMode: tileMode,
        );

    switch (gradientType) {
      case MiraiGradientType.linear:
        return linearGradient();
      case MiraiGradientType.radial:
        return radialGradient();
      case MiraiGradientType.sweep:
        return sweepGradient();
    }
  }
}
