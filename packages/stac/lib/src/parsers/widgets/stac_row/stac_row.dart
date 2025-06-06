import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'package:stac/src/parsers/widgets/stac_row/stac_row_parser.dart';

part 'stac_row.freezed.dart';
part 'stac_row.g.dart';

@freezed
abstract class StacRow with _$StacRow {
  const factory StacRow({
    @Default(MainAxisAlignment.start) MainAxisAlignment mainAxisAlignment,
    @Default(CrossAxisAlignment.center) CrossAxisAlignment crossAxisAlignment,
    @Default(MainAxisSize.max) MainAxisSize mainAxisSize,
    TextDirection? textDirection,
    @Default(VerticalDirection.down) VerticalDirection verticalDirection,
    @Default(StacDouble.zero) StacDouble spacing,
    @Default([]) List<Map<String, dynamic>> children,
  }) = _StacRow;

  factory StacRow.fromJson(Map<String, dynamic> json) =>
      _$StacRowFromJson(json);
}
