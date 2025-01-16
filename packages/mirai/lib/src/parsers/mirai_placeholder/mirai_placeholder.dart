import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_placeholder/mirai_placeholder_parser.dart';

part 'mirai_placeholder.freezed.dart';
part 'mirai_placeholder.g.dart';

@freezed
class MiraiPlaceholder with _$MiraiPlaceholder {
  const factory MiraiPlaceholder({
    double? fallbackWidth,
    double? fallbackHeight,
    double? strokeWidth,
    String? color,
    Map<String, dynamic>? child,
  }) = _MiraiPlaceholder;

  factory MiraiPlaceholder.fromJson(Map<String, dynamic> json) =>
      _$MiraiPlaceholderFromJson(json);
}
