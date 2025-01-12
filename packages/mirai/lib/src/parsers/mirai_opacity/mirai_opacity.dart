import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_opacity/mirai_opacity_parser.dart';

part 'mirai_opacity.freezed.dart';
part 'mirai_opacity.g.dart';

@freezed
class MiraiOpacity with _$MiraiOpacity {
  const factory MiraiOpacity({
    required double opacity,
    required Map<String, dynamic> child,
  }) = _MiraiOpacity;

  factory MiraiOpacity.fromJson(Map<String, dynamic> json) =>
      _$MiraiOpacityFromJson(json);
}
