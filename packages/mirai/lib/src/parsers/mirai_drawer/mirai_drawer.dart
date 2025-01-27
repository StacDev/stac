import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_shape_border/mirai_shape_border.dart';

export 'package:mirai/src/parsers/mirai_drawer/mirai_drawer_parser.dart';

part 'mirai_drawer.freezed.dart';
part 'mirai_drawer.g.dart';

@freezed
class MiraiDrawer with _$MiraiDrawer {
  const factory MiraiDrawer({
    String? backgroundColor,
    String? shadowColor,
    String? surfaceTintColor,
    String? semanticLabel,
    double? elevation,
    double? width,
    MiraiShapeBorder? shape,
    Clip? clipBehavior,
    required Map<String, dynamic> child,
  }) = _MiraiDrawer;

  factory MiraiDrawer.fromJson(Map<String, dynamic> json) =>
      _$MiraiDrawerFromJson(json);
}
