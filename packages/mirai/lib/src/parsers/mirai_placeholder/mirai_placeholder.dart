import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_placeholder/mirai_placeholder_parser.dart';

part 'mirai_placeholder.freezed.dart';
part 'mirai_placeholder.g.dart';

@freezed
class MiraiPlaceholder with _$MiraiPlaceholder {
  const factory MiraiPlaceholder({
    @Default(2.0) double fallbackWidth,
    @Default(400.0) double fallbackHeight,
    @Default(400.0) double strokeWidth,
    @Default('#455A64') String color,
    Map<String, dynamic>? child,
  }) = _MiraiPlaceholder;

  factory MiraiPlaceholder.fromJson(Map<String, dynamic> json) =>
      _$MiraiPlaceholderFromJson(json);
}
