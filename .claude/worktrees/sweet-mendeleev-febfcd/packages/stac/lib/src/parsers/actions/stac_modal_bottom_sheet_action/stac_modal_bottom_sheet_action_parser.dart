import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_box_constraints_parser.dart';
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
    if (model.widget != null) {
      return _showModalBottomSheet(
        context,
        model,
        model.widget?.parse(context) ?? const SizedBox(),
      );
    } else if (model.assetPath?.isNotEmpty ?? false) {
      return _showModalBottomSheet(
        context,
        model,
        Stac.fromAssets(model.assetPath!),
      );
    } else if (model.request != null) {
      return _showModalBottomSheet(
        context,
        model,
        Stac.fromNetwork(context: context, request: model.request!),
      );
    }
  }

  Future _showModalBottomSheet(
    BuildContext context,
    StacModalBottomSheetAction model,
    Widget widget,
  ) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => widget,
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
