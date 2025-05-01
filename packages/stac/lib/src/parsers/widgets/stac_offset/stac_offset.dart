import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_offset.freezed.dart';
part 'stac_offset.g.dart';

@freezed
abstract class StacOffset with _$StacOffset {
  const factory StacOffset({
    required double dx,
    required double dy,
  }) = _StacOffset;

  factory StacOffset.fromJson(Map<String, dynamic> json) =>
      _$StacOffsetFromJson(json);
}

extension StacOffsetParser on StacOffset {
  Offset get parse {
    return Offset(dx, dy);
  }
}
