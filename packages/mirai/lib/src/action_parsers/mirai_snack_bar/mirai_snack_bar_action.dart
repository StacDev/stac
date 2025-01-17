import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../mirai.dart';

part 'mirai_snack_bar_action.freezed.dart';
part 'mirai_snack_bar_action.g.dart';

@freezed
class MiraiSnackBarAction with _$MiraiSnackBarAction {
  const factory MiraiSnackBarAction({
    String? textColor,
    String? disabledTextColor,
    String? backgroundColor,
    String? disabledBackgroundColor,
    required String label,
    required Map<String, dynamic> onPressed,
  }) = _MiraiSnackBarAction;

  factory MiraiSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$MiraiSnackBarActionFromJson(json);
}

extension MiraiSnackBarActionParser on MiraiSnackBarAction {
  SnackBarAction parse(BuildContext context) {
    return SnackBarAction(
      textColor: textColor?.toColor(context),
      disabledTextColor: disabledTextColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      label: label,
      onPressed: () => Mirai.onCallFromJson(onPressed, context),
    );
  }
}
