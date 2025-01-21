import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_limited_box/mirai_limited_box_parser.dart';

part 'mirai_limited_box.freezed.dart';
part 'mirai_limited_box.g.dart';

@freezed
class MiraiLimitedBox with _$MiraiLimitedBox {
  const factory MiraiLimitedBox({
    @Default(double.infinity) double maxHeight,
    @Default(double.infinity) double maxWidth,
    Map<String, dynamic>? child,
  }) = _MiraiLimitedBox;

  factory MiraiLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$MiraiLimitedBoxFromJson(json);
}
