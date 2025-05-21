import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

part 'stac_box_constraints.freezed.dart';
part 'stac_box_constraints.g.dart';

@freezed
abstract class StacBoxConstraints with _$StacBoxConstraints {
  const factory StacBoxConstraints({
    required StacDouble minWidth,
    required StacDouble maxWidth,
    required StacDouble minHeight,
    required StacDouble maxHeight,
  }) = _StacBoxConstraints;

  factory StacBoxConstraints.fromJson(Map<String, dynamic> json) =>
      _$StacBoxConstraintsFromJson(json);
}

extension StacBoxConstraintsParser on StacBoxConstraints {
  BoxConstraints get parse {
    return BoxConstraints(
      minWidth: minWidth.parse,
      maxWidth: maxWidth.parse,
      minHeight: minHeight.parse,
      maxHeight: maxHeight.parse,
    );
  }
}
