import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_alignment_geometry.freezed.dart';
part 'stac_alignment_geometry.g.dart';

@freezed
class StacAlignmentGeometry with _$StacAlignmentGeometry {
  const factory StacAlignmentGeometry({
    required double dx,
    required double dy,
  }) = _StacAlignmentGeometry;

  factory StacAlignmentGeometry.fromJson(Map<String, dynamic> json) =>
      _$StacAlignmentGeometryFromJson(json);
}

extension StacOffsetParser on StacAlignmentGeometry {
  Alignment get parse {
    return Alignment(dx, dy);
  }
}
