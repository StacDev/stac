import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_column/mirai_column_parser.dart';

part 'mirai_column.freezed.dart';
part 'mirai_column.g.dart';

@freezed
class MiraiColumn with _$MiraiColumn {
  const factory MiraiColumn({
    @Default(MainAxisAlignment.start) MainAxisAlignment mainAxisAlignment,
    @Default(CrossAxisAlignment.center) CrossAxisAlignment crossAxisAlignment,
    @Default(MainAxisSize.max) MainAxisSize mainAxisSize,
    TextDirection? textDirection,
    @Default(VerticalDirection.down) VerticalDirection verticalDirection,
    @Default(0) double spacing,
    @Default([]) List<Map<String, dynamic>> children,
  }) = _MiraiColumn;

  factory MiraiColumn.fromJson(Map<String, dynamic> json) =>
      _$MiraiColumnFromJson(json);
}
