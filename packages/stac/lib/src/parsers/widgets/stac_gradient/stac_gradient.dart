import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/parsers.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_gradient.freezed.dart';
part 'stac_gradient.g.dart';

enum StacGradientType { linear, radial, sweep }

@freezed
abstract class StacGradient with _$StacGradient {
  const factory StacGradient({
    required List<String> colors,
    List<StacDouble>? stops,
    @Default(StacAlignment.centerLeft) StacAlignment begin,
    @Default(StacAlignment.centerRight) StacAlignment end,
    @Default(StacAlignment.center) StacAlignment center,
    @Default(StacGradientType.linear) StacGradientType gradientType,
    StacAlignmentGeometry? focal,
    @Default(TileMode.clamp) TileMode tileMode,
    @Default(StacDouble.zero) StacDouble focalRadius,
    @Default(StacDouble(0.5)) StacDouble radius,
    @Default(StacDouble.zero) StacDouble startAngle,
    @Default(StacDouble(math.pi * 2)) StacDouble endAngle,
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
          stops: stops?.map((e) => e.parse).toList().toList(),
          tileMode: tileMode,
        );

    Gradient radialGradient() => RadialGradient(
          colors: colors.map((e) => e.toColor(context)!).toList(),
          stops: stops?.map((e) => e.parse).toList().toList(),
          tileMode: tileMode,
          focal: focal?.parse,
          focalRadius: focalRadius.parse,
          radius: radius.parse,
          center: center.value,
        );

    Gradient sweepGradient() => SweepGradient(
          colors: colors.map((e) => e.toColor(context)!).toList(),
          stops: stops?.map((e) => e.parse).toList().toList(),
          center: center.value,
          startAngle: startAngle.parse,
          endAngle: endAngle.parse,
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
