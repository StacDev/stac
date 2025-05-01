import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_flexible_parser.dart';

part 'stac_flexible.freezed.dart';
part 'stac_flexible.g.dart';

@freezed
abstract class StacFlexible with _$StacFlexible {
  const factory StacFlexible({
    Map<String, dynamic>? child,
    @Default(1) int flex,
    @Default(FlexFit.loose) FlexFit fit,
  }) = _StacFlexible;

  factory StacFlexible.fromJson(Map<String, dynamic> json) =>
      _$StacFlexibleFromJson(json);
}
