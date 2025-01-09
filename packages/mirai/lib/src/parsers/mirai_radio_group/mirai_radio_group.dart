import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_radio_group/mirai_radio_group_parser.dart';

part 'mirai_radio_group.freezed.dart';
part 'mirai_radio_group.g.dart';

enum RadioAlignment { vertical, horizontal }

@freezed
class MiraiRadioGroup with _$MiraiRadioGroup {
  const factory MiraiRadioGroup({
    String? id,
    dynamic groupValue,
    Map<String, dynamic>? child,
  }) = _MiraiRadioGroup;

  factory MiraiRadioGroup.fromJson(Map<String, dynamic> json) =>
      _$MiraiRadioGroupFromJson(json);
}
