import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/stac_circular_progress_indicator/stac_circular_progress_indicator_parser.dart';

part 'stac_circular_progress_indicator.freezed.dart';
part 'stac_circular_progress_indicator.g.dart';

@freezed
abstract class StacCircularProgressIndicator
    with _$StacCircularProgressIndicator {
  const factory StacCircularProgressIndicator({
    double? value,
    String? backgroundColor,
    String? color,
    @Default(4.0) double strokeWidth,
    @Default(0) double strokeAlign,
    String? semanticsLabel,
    String? semanticsValue,
    StrokeCap? strokeCap,
  }) = _StacCircularProgressIndicator;

  factory StacCircularProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacCircularProgressIndicatorFromJson(json);
}
