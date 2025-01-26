import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'mirai_auto_complete_parser.dart';

part 'mirai_auto_complete.freezed.dart';
part 'mirai_auto_complete.g.dart';

@freezed
class MiraiAutoComplete with _$MiraiAutoComplete {
  const factory MiraiAutoComplete({
    required List<String> options,
    Map<String, dynamic>? onSelected,
    @Default(200) double optionsMaxHeight,
    @Default(OptionsViewOpenDirection.down)
    OptionsViewOpenDirection optionsViewOpenDirection,
    String? initialValue,
  }) = _MiraiAutoComplete;

  factory MiraiAutoComplete.fromJson(Map<String, dynamic> json) =>
      _$MiraiAutoCompleteFromJson(json);
}
