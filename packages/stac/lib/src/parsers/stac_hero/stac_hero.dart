import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_rect_tween/stac_rect_tween.dart';
export 'package:stac/src/parsers/stac_hero/stac_hero_parser.dart';

part 'stac_hero.freezed.dart';
part 'stac_hero.g.dart';

@freezed
abstract class StacHero with _$StacHero {
  const factory StacHero({
    required Object tag,
    required Map<String, dynamic> child,
    StacRectTween? createRectTween,
    Map<String, dynamic>? flightShuttleBuilder,
    Map<String, dynamic>? placeholderBuilder,
    @Default(false) bool transitionOnUserGestures,
  }) = _StacHero;

  factory StacHero.fromJson(Map<String, dynamic> json) =>
      _$StacHeroFromJson(json);
}
