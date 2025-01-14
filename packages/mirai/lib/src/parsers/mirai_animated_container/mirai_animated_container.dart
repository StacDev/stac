import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../mirai.dart';
import '../mirai_box_constraints/mirai_box_constraints.dart';

part 'mirai_animated_container.freezed.dart';
part 'mirai_animated_container.g.dart';

@freezed
class MiraiAnimatedContainer with _$MiraiAnimatedContainer {
  const factory MiraiAnimatedContainer({
    required Duration duration,
    MiraiAlignment? alignment,
    MiraiEdgeInsets? padding,
    MiraiBoxDecoration? decoration,
    MiraiBoxDecoration? foregroundDecoration,
    String? color,
    double? width,
    double? height,
    MiraiBoxConstraints? constraints,
    MiraiEdgeInsets? margin,
    Map<String, dynamic>? child,
    @Default(Clip.none) Clip clipBehavior,
  }) = _MiraiAnimatedContainer;

  factory MiraiAnimatedContainer.fromJson(Map<String, dynamic> json) =>
      _$MiraiAnimatedContainerFromJson(json);
}
