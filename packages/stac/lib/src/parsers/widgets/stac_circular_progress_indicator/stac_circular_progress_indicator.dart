import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_circular_progress_indicator_parser.dart';

part 'stac_circular_progress_indicator.freezed.dart';
part 'stac_circular_progress_indicator.g.dart';

@freezed
abstract class StacCircularProgressIndicator
    with _$StacCircularProgressIndicator {
  const factory StacCircularProgressIndicator({
    StacDouble? value,
    String? backgroundColor,
    String? color,
    @Default(StacDouble(4.0)) StacDouble strokeWidth,
    @Default(StacDouble.zero) StacDouble strokeAlign,
    String? semanticsLabel,
    String? semanticsValue,
    StrokeCap? strokeCap,
  }) = _StacCircularProgressIndicator;

  factory StacCircularProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacCircularProgressIndicatorFromJson(json);
}
