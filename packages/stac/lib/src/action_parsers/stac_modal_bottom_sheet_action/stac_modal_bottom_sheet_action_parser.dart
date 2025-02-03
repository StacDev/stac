import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/action_parsers/stac_modal_bottom_sheet_action/stac_modal_bottom_sheet_action.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/stac_border/stac_border.dart';
import 'package:stac/src/parsers/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_framework/stac_framework.dart';

export 'stac_modal_bottom_sheet_action.dart';

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
        Stac.fromJson(model.widget, context) ?? const SizedBox(),
      );
    } else if (model.assetPath?.isNotEmpty ?? false) {
      return _showModalBottomSheet(
        context,
        model,
        Stac.fromAssets(model.assetPath!) ?? const SizedBox(),
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
      isScrollControlled: model.isScrollControlled,
      useRootNavigator: model.useRootNavigator,
      isDismissible: model.isDismissible,
      enableDrag: model.enableDrag,
      showDragHandle: model.showDragHandle,
      useSafeArea: model.useSafeArea,
    );
  }
}
