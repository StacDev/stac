import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/action_parsers/mirai_snack_bar/mirai_snack_bar_action.dart';
import 'package:mirai/src/parsers/mirai_duration/mirai_duration.dart';
import 'package:mirai/src/parsers/mirai_shape_border/mirai_shape_border.dart';
import 'package:mirai/src/parsers/parsers.dart';

export 'mirai_snack_bar_parser.dart';

part 'mirai_snack_bar.freezed.dart';
part 'mirai_snack_bar.g.dart';

@freezed
class MiraiSnackBar with _$MiraiSnackBar {
  const factory MiraiSnackBar({
    required Map<String, dynamic> content,
    String? backgroundColor,
    double? elevation,
    MiraiEdgeInsets? margin,
    MiraiEdgeInsets? padding,
    double? width,
    MiralShapeBorder? shape,
    HitTestBehavior? hitTestBehavior,
    SnackBarBehavior? behavior,
    MiraiSnackBarAction? action,
    double? actionOverflowThreshold,
    bool? showCloseIcon,
    String? closeIconColor,
    @Default(MiraiDuration(milliseconds: 4000)) MiraiDuration duration,
    Map<String, dynamic>? onVisible,
    DismissDirection? dismissDirection,
    @Default(Clip.hardEdge) Clip clipBehavior,
  }) = _MiraiSnackBar;

  factory MiraiSnackBar.fromJson(Map<String, dynamic> json) =>
      _$MiraiSnackBarFromJson(json);
}
