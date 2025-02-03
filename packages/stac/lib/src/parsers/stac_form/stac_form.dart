import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/stac_form/stac_form_parser.dart';

part 'stac_form.freezed.dart';
part 'stac_form.g.dart';

@freezed
class StacForm with _$StacForm {
  const factory StacForm({
    AutovalidateMode? autovalidateMode,
    required Map<String, dynamic> child,
  }) = _StacForm;

  factory StacForm.fromJson(Map<String, dynamic> json) =>
      _$StacFormFromJson(json);
}
