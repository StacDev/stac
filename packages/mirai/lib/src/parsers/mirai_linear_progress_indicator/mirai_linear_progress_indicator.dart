import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/parsers.dart';

export 'package:mirai/src/parsers/mirai_linear_progress_indicator/mirai_linear_progress_indicator_parser.dart';

part 'mirai_linear_progress_indicator.freezed.dart';
part 'mirai_linear_progress_indicator.g.dart';

@freezed
class MiraiLinearProgressIndicator with _$MiraiLinearProgressIndicator {
  const factory MiraiLinearProgressIndicator({
    double? value,
    String? backgroundColor,
    String? color,
    double? minHeight,
    String? semanticsLabel,
    String? semanticsValue,
    @Default(MiraiBorderRadius()) MiraiBorderRadius borderRadius,
  }) = _MiraiLinearProgressIndicator;

  factory MiraiLinearProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$MiraiLinearProgressIndicatorFromJson(json);
}
