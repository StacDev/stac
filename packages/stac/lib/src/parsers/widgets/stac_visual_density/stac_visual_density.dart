import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

part 'stac_visual_density.freezed.dart';
part 'stac_visual_density.g.dart';

@freezed
abstract class StacVisualDensity with _$StacVisualDensity {
  const factory StacVisualDensity({
    required StacDouble horizontal,
    required StacDouble vertical,
  }) = _StacVisualDensity;

  factory StacVisualDensity.fromJson(Map<String, dynamic> json) =>
      _$StacVisualDensityFromJson(json);
}

extension StacVisualDensityExt on StacVisualDensity {
  VisualDensity get parse => VisualDensity(
        horizontal: horizontal.parse,
        vertical: vertical.parse,
      );
}
