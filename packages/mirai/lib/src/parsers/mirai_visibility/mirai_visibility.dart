import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_visibility/mirai_visibility_parser.dart';

part 'mirai_visibility.freezed.dart';
part 'mirai_visibility.g.dart';

@freezed
class MiraiVisibility with _$MiraiVisibility {
  const factory MiraiVisibility({
    required Map<String, dynamic> child,
    Map<String, dynamic>? replacement,
    @Default(true) bool visible,
    @Default(false) bool maintainState,
    @Default(false) bool maintainAnimation,
    @Default(false) bool maintainSize,
    @Default(false) bool maintainSemantics,
    @Default(false) bool maintainInteractivity,
  }) = _MiraiVisibility;

  factory MiraiVisibility.fromJson(Map<String, dynamic> json) =>
      _$MiraiVisibilityFromJson(json);
}
