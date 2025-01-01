import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_builder/mirai_builder_parser.dart';

part 'mirai_builder.freezed.dart';
part 'mirai_builder.g.dart';

@freezed
class MiraiBuilder with _$MiraiBuilder {
  const factory MiraiBuilder({
    Map<String, dynamic>? builder,
  }) = _MiraiBuilder;

  factory MiraiBuilder.fromJson(Map<String, dynamic> json) =>
      _$MiraiBuilderFromJson(json);
}
