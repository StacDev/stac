import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/parsers.dart';

export 'package:stac/src/parsers/stac_fitted_box/stac_fitted_box_parser.dart';

part 'stac_fitted_box.freezed.dart';
part 'stac_fitted_box.g.dart';

@freezed
class StacFittedBox with _$StacFittedBox {
  const factory StacFittedBox({
    @Default(BoxFit.contain) BoxFit fit,
    @Default(StacAlignmentDirectional.center)
    StacAlignmentDirectional alignment,
    @Default(Clip.none) Clip clipBehavior,
    Map<String, dynamic>? child,
  }) = _StacFittedBox;

  factory StacFittedBox.fromJson(Map<String, dynamic> json) =>
      _$StacFittedBoxFromJson(json);
}
