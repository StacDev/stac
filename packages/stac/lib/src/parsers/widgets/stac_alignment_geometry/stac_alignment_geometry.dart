import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

part 'stac_alignment_geometry.freezed.dart';
part 'stac_alignment_geometry.g.dart';

@freezed
abstract class StacAlignmentGeometry with _$StacAlignmentGeometry {
  const factory StacAlignmentGeometry({
    required StacDouble dx,
    required StacDouble dy,
  }) = _StacAlignmentGeometry;

  factory StacAlignmentGeometry.fromJson(Map<String, dynamic> json) =>
      _$StacAlignmentGeometryFromJson(json);
}

extension StacOffsetParser on StacAlignmentGeometry {
  Alignment get parse {
    return Alignment(dx.parse, dy.parse);
  }
}
