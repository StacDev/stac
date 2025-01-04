import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_hero/mirai_hero_parser.dart';

part 'mirai_hero.freezed.dart';
part 'mirai_hero.g.dart';

@freezed
class MiraiHero with _$MiraiHero {
  const factory MiraiHero({
    required Object tag,
    required Map<String, dynamic> child,
    Map<String, dynamic>? createRectTween,
    Map<String, dynamic>? flightShuttleBuilder,
    Map<String, dynamic>? placeholderBuilder,
    @Default(false) bool transitionOnUserGestures,
  }) = _MiraiHero;

  factory MiraiHero.fromJson(Map<String, dynamic> json) =>
      _$MiraiHeroFromJson(json);
}
