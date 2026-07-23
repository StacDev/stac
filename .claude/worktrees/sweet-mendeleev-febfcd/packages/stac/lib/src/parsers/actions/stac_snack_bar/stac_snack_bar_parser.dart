import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/foundation/animation/stac_duration_parsers.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_hit_test_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_dismiss_direction_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_snack_bar_behavior_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSnackBarParser extends StacActionParser<StacSnackBar> {
  const StacSnackBarParser();

  @override
  String get actionType => ActionType.showSnackBar.name;

  @override
  StacSnackBar getModel(Map<String, dynamic> json) =>
      StacSnackBar.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacSnackBar model) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.hideCurrentSnackBar();

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Stac.fromJson(model.content, context) ?? SizedBox.shrink(),
        backgroundColor: model.backgroundColor?.toColor(context),
        elevation: model.elevation,
        margin: model.margin?.parse,
        padding: model.padding?.parse,
        width: model.width,
        shape: model.shape?.parse(context),
        hitTestBehavior: model.hitTestBehavior?.parse,
        behavior: model.behavior?.parse,
        action: _parseAction(context, model.action),
        actionOverflowThreshold: model.actionOverflowThreshold,
        showCloseIcon: model.showCloseIcon,
        closeIconColor: model.closeIconColor?.toColor(context),
        duration: model.duration?.parse ?? const Duration(milliseconds: 4000),
        onVisible: () => Stac.onCallFromJson(model.onVisible, context),
        dismissDirection: model.dismissDirection?.parse,
        clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      ),
    );
  }

  SnackBarAction? _parseAction(
    BuildContext context,
    StacSnackBarAction? action,
  ) {
    if (action == null) return null;
    return SnackBarAction(
      textColor: action.textColor?.toColor(context),
      disabledTextColor: action.disabledTextColor?.toColor(context),
      backgroundColor: action.backgroundColor?.toColor(context),
      disabledBackgroundColor: action.disabledBackgroundColor?.toColor(context),
      label: action.label,
      onPressed: () => action.onPressed.parse(context),
    );
  }
}
