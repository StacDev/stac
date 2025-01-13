import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/action_parsers/mirai_snack_bar/mirai_snack_bar_action.dart';
import 'package:mirai/src/parsers/mirai_duration/mirai_duration.dart';
import 'package:mirai/src/parsers/mirai_shape_border/mirai_shape_border.dart';
import 'package:mirai/src/utils/action_type.dart';

class MiraiSnackBarParser extends MiraiActionParser<MiraiSnackBar> {
  const MiraiSnackBarParser();

  @override
  String get actionType => ActionType.showSnackBar.name;

  @override
  MiraiSnackBar getModel(Map<String, dynamic> json) =>
      MiraiSnackBar.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, MiraiSnackBar model) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.hideCurrentSnackBar();

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Mirai.fromJson(model.content, context) ?? SizedBox(),
        backgroundColor: model.backgroundColor?.toColor(context),
        elevation: model.elevation,
        margin: model.margin?.parse,
        padding: model.padding?.parse,
        width: model.width,
        shape: model.shape?.parse(context),
        hitTestBehavior: model.hitTestBehavior,
        behavior: model.behavior,
        action: model.action?.parse(context),
        actionOverflowThreshold: model.actionOverflowThreshold,
        showCloseIcon: model.showCloseIcon,
        closeIconColor: model.closeIconColor?.toColor(context),
        duration: model.duration.parse,
        onVisible: () => Mirai.onCallFromJson(model.onVisible, context),
        dismissDirection: model.dismissDirection,
        clipBehavior: model.clipBehavior,
      ),
    );
  }
}
