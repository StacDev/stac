import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_traversal_edge_behavior_parser.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
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
    final WidgetBuilder content;
    if (model.widget != null) {
      content = (scoped) =>
          Stac.fromJson(model.widget, scoped) ?? const SizedBox();
    } else if (model.assetPath?.isNotEmpty ?? false) {
      content = (_) => Stac.fromAssets(model.assetPath!);
    } else if (model.request != null) {
      content = (scoped) =>
          Stac.fromNetwork(context: scoped, request: model.request!);
    } else {
      return null;
    }
    // The dialog is built in its own route; it keeps the opener's state.
    return _showDialog(context, model, content);
  }

  Future _showDialog(
    BuildContext context,
    StacDialogAction model,
    WidgetBuilder content,
  ) {
    return showDialog(
      context: context,
      builder: (_) => stacScopedContent(context, content),
      barrierDismissible: model.barrierDismissible ?? true,
      barrierColor: model.barrierColor.toColor(context),
      barrierLabel: model.barrierLabel,
      useSafeArea: model.useSafeArea ?? true,
      traversalEdgeBehavior: model.traversalEdgeBehavior?.parse,
    );
  }
}
