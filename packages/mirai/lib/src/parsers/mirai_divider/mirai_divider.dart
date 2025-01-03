import 'package:freezed_annotation/freezed_annotation.dart';

part 'mirai_divider.freezed.dart'; // Auto-generated Freezed file
part 'mirai_divider.g.dart'; // Auto-generated JSON serialization file

@freezed
class MiraiDivider with _$MiraiDivider {
  const factory MiraiDivider({
    double? thickness,
    double? height,
    String? color,
  }) = _MiraiDivider;

  factory MiraiDivider.fromJson(Map<String, dynamic> json) =>
      _$MiraiDividerFromJson(json);
}
