import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_rect/mirai_rect.dart';

export 'package:mirai/src/parsers/mirai_rect_tween/mirai_rect_tween_parser.dart';

part 'mirai_rect_tween.freezed.dart';
part 'mirai_rect_tween.g.dart';

@freezed
class MiraiRectTween with _$MiraiRectTween {
  const factory MiraiRectTween({
    required String type,
    MiraiRect? begin,
    MiraiRect? end,
  }) = _MiraiRectTween;

  factory MiraiRectTween.fromJson(Map<String, dynamic> json) =>
      _$MiraiRectTweenFromJson(json);
}
