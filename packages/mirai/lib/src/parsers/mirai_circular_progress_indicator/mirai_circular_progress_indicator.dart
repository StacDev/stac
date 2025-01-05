import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_circular_progress_indicator/mirai_circular_progress_indicator_parser.dart';

part 'mirai_circular_progress_indicator.freezed.dart';
part 'mirai_circular_progress_indicator.g.dart';

@freezed
class MiraiCircularProgressIndicator with _$MiraiCircularProgressIndicator {
  const factory MiraiCircularProgressIndicator({
    double? value,
    String? backgroundColor,
    String? color,
    @Default(4.0) double strokeWidth,
    @Default(0) double strokeAlign,
    String? semanticsLabel,
    String? semanticsValue,
    StrokeCap? strokeCap,
  }) = _MiraiCircularProgressIndicator;

  factory MiraiCircularProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$MiraiCircularProgressIndicatorFromJson(json);
}
