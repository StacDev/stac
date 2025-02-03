import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/action_parsers/stac_dialog_action/stac_dialog_action.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_framework/stac_framework.dart';

class StacDialogActionParser extends StacActionParser<StacDialogAction> {
  const StacDialogActionParser();

  @override
  String get actionType => ActionType.showDialog.name;

  @override
  StacDialogAction getModel(Map<String, dynamic> json) =>
      StacDialogAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacDialogAction model) {
    if (model.widget != null) {
      return _showDialog(
        context,
        model,
        Stac.fromJson(model.widget, context) ?? const SizedBox(),
      );
    } else if (model.assetPath?.isNotEmpty ?? false) {
      return _showDialog(
        context,
        model,
        Stac.fromAssets(model.assetPath!) ?? const SizedBox(),
      );
    } else if (model.request != null) {
      return _showDialog(
        context,
        model,
        Stac.fromNetwork(context: context, request: model.request!),
      );
    }
  }

  Future _showDialog(
    BuildContext context,
    StacDialogAction model,
    Widget widget,
  ) {
    return showDialog(
      context: context,
      builder: (_) => widget,
      barrierDismissible: model.barrierDismissible,
      barrierColor: model.barrierColor.toColor(context),
      barrierLabel: model.barrierLabel,
      useSafeArea: model.useSafeArea,
      traversalEdgeBehavior: model.traversalEdgeBehavior,
    );
  }
}
