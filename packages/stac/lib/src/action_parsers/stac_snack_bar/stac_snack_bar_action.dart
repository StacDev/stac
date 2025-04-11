import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../stac.dart';

part 'stac_snack_bar_action.freezed.dart';
part 'stac_snack_bar_action.g.dart';

@freezed
abstract class StacSnackBarAction with _$StacSnackBarAction {
  const factory StacSnackBarAction({
    String? textColor,
    String? disabledTextColor,
    String? backgroundColor,
    String? disabledBackgroundColor,
    required String label,
    required Map<String, dynamic> onPressed,
  }) = _StacSnackBarAction;

  factory StacSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarActionFromJson(json);
}

extension StacSnackBarActionParser on StacSnackBarAction {
  SnackBarAction parse(BuildContext context) {
    return SnackBarAction(
      textColor: textColor?.toColor(context),
      disabledTextColor: disabledTextColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      label: label,
      onPressed: () => Stac.onCallFromJson(onPressed, context),
    );
  }
}
