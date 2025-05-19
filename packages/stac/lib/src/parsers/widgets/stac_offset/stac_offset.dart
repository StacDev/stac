import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

part 'stac_offset.freezed.dart';
part 'stac_offset.g.dart';

@freezed
abstract class StacOffset with _$StacOffset {
  const factory StacOffset({
    required StacDouble dx,
    required StacDouble dy,
  }) = _StacOffset;

  factory StacOffset.fromJson(Map<String, dynamic> json) =>
      _$StacOffsetFromJson(json);
}

extension StacOffsetParser on StacOffset {
  Offset get parse {
    return Offset(dx.parse, dy.parse);
  }
}
