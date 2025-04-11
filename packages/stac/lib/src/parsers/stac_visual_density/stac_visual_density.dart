import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_visual_density.freezed.dart';
part 'stac_visual_density.g.dart';

@freezed
abstract class StacVisualDensity with _$StacVisualDensity {
  const factory StacVisualDensity({
    required double horizontal,
    required double vertical,
  }) = _StacVisualDensity;

  factory StacVisualDensity.fromJson(Map<String, dynamic> json) =>
      _$StacVisualDensityFromJson(json);
}

extension StacVisualDensityExt on StacVisualDensity {
  VisualDensity get parse => VisualDensity(
        horizontal: horizontal,
        vertical: vertical,
      );
}
