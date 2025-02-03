import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_box_constraints.freezed.dart';
part 'stac_box_constraints.g.dart';

@freezed
class StacBoxConstraints with _$StacBoxConstraints {
  const factory StacBoxConstraints({
    required double minWidth,
    required double maxWidth,
    required double minHeight,
    required double maxHeight,
  }) = _StacBoxConstraints;

  factory StacBoxConstraints.fromJson(Map<String, dynamic> json) =>
      _$StacBoxConstraintsFromJson(json);
}

extension StacBoxConstraintsParser on StacBoxConstraints {
  BoxConstraints get parse {
    return BoxConstraints(
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
    );
  }
}
