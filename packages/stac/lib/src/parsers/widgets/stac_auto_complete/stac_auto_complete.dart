import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_auto_complete_parser.dart';

part 'stac_auto_complete.freezed.dart';
part 'stac_auto_complete.g.dart';

@freezed
abstract class StacAutoComplete with _$StacAutoComplete {
  const factory StacAutoComplete({
    required List<String> options,
    Map<String, dynamic>? onSelected,
    @Default(200) double optionsMaxHeight,
    @Default(OptionsViewOpenDirection.down)
    OptionsViewOpenDirection optionsViewOpenDirection,
    String? initialValue,
  }) = _StacAutoComplete;

  factory StacAutoComplete.fromJson(Map<String, dynamic> json) =>
      _$StacAutoCompleteFromJson(json);
}
