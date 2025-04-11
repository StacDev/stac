import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/parsers.dart';

export 'package:stac/src/parsers/stac_stack/stac_stack_parser.dart';

part 'stac_stack.freezed.dart';
part 'stac_stack.g.dart';

@freezed
abstract class StacStack with _$StacStack {
  const factory StacStack({
    @Default(StacAlignmentDirectional.topStart)
    StacAlignmentDirectional alignment,
    @Default(Clip.hardEdge) Clip clipBehavior,
    @Default(StackFit.loose) StackFit fit,
    TextDirection? textDirection,
    @Default([]) List<Map<String, dynamic>> children,
  }) = _StacStack;

  factory StacStack.fromJson(Map<String, dynamic> json) =>
      _$StacStackFromJson(json);
}
