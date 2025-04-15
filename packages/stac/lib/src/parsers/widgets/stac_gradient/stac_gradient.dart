import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/parsers.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_gradient.freezed.dart';
part 'stac_gradient.g.dart';

enum StacGradientType { linear, radial, sweep }

@freezed
abstract class StacGradient with _$StacGradient {
  const factory StacGradient({
    required List<String> colors,
    List<double>? stops,
    @Default(StacAlignment.centerLeft) StacAlignment begin,
    @Default(StacAlignment.centerRight) StacAlignment end,
    @Default(StacAlignment.center) StacAlignment center,
    @Default(StacGradientType.linear) StacGradientType gradientType,
    StacAlignmentGeometry? focal,
    @Default(TileMode.clamp) TileMode tileMode,
    @Default(0.0) double focalRadius,
    @Default(0.5) double radius,
    @Default(0.0) double startAngle,
    @Default(math.pi * 2) double endAngle,
  }) = _StacGradient;

  factory StacGradient.fromJson(Map<String, dynamic> json) =>
      _$StacGradientFromJson(json);
}

extension StacGradientParser on StacGradient {
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
      case StacGradientType.linear:
        return linearGradient();
      case StacGradientType.radial:
        return radialGradient();
      case StacGradientType.sweep:
        return sweepGradient();
    }
  }
}
