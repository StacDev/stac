import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_column_parser.dart';

part 'stac_column.freezed.dart';
part 'stac_column.g.dart';

@freezed
abstract class StacColumn with _$StacColumn {
  const factory StacColumn({
    @Default(MainAxisAlignment.start) MainAxisAlignment mainAxisAlignment,
    @Default(CrossAxisAlignment.center) CrossAxisAlignment crossAxisAlignment,
    @Default(MainAxisSize.max) MainAxisSize mainAxisSize,
    TextDirection? textDirection,
    @Default(VerticalDirection.down) VerticalDirection verticalDirection,
    @Default(StacDouble.zero) StacDouble spacing,
    @Default([]) List<Map<String, dynamic>> children,
  }) = _StacColumn;

  factory StacColumn.fromJson(Map<String, dynamic> json) =>
      _$StacColumnFromJson(json);
}
