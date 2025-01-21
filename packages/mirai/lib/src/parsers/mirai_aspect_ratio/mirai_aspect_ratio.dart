import 'package:freezed_annotation/freezed_annotation.dart';
export 'package:mirai/src/parsers/mirai_aspect_ratio/mirai_aspect_ratio_parser.dart';

part 'mirai_aspect_ratio.freezed.dart';
part 'mirai_aspect_ratio.g.dart';

@freezed
class MiraiAspectRatio with _$MiraiAspectRatio {
  const factory MiraiAspectRatio({
    @Default(1) double aspectRatio,
    Map<String, dynamic>? child,
  }) = _MiraiAspectRatio;

  factory MiraiAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$MiraiAspectRatioFromJson(json);
}
