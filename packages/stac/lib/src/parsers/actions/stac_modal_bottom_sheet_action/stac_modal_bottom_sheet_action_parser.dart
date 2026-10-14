import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_box_constraints_parser.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacModalBottomSheetActionParser
    extends StacActionParser<StacModalBottomSheetAction> {
  const StacModalBottomSheetActionParser();

  @override
  String get actionType => ActionType.showModalBottomSheet.name;

  @override
  StacModalBottomSheetAction getModel(Map<String, dynamic> json) =>
      StacModalBottomSheetAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, model) {
    final WidgetBuilder content;
    if (model.widget != null) {
      content = (scoped) => model.widget.parse(scoped) ?? const SizedBox();
    } else if (model.assetPath?.isNotEmpty ?? false) {
      content = (_) => Stac.fromAssets(model.assetPath!);
    } else if (model.request != null) {
      content = (scoped) =>
          Stac.fromNetwork(context: scoped, request: model.request!);
    } else {
      return null;
    }
    // The sheet is built in its own route; it keeps the opener's state.
    return _showModalBottomSheet(context, model, content);
  }

  Future _showModalBottomSheet(
    BuildContext context,
    StacModalBottomSheetAction model,
    WidgetBuilder content,
  ) {
    return showModalBottomSheet(
      context: context,
      builder: (_) => stacScopedContent(context, content),
      backgroundColor: model.backgroundColor.toColor(context),
      barrierLabel: model.barrierLabel,
      elevation: model.elevation,
      shape: model.shape?.parse(context),
      constraints: model.constraints?.parse,
      barrierColor: model.barrierColor.toColor(context),
      isScrollControlled: model.isScrollControlled ?? false,
      useRootNavigator: model.useRootNavigator ?? false,
      isDismissible: model.isDismissible ?? true,
      enableDrag: model.enableDrag ?? true,
      showDragHandle: model.showDragHandle,
      useSafeArea: model.useSafeArea ?? false,
    );
  }
}
