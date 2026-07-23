import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacMultiActionParser extends StacActionParser<StacMultiAction> {
  const StacMultiActionParser();

  @override
  String get actionType => ActionType.multiAction.name;

  @override
  StacMultiAction getModel(Map<String, dynamic> json) =>
      StacMultiAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacMultiAction model) async {
    final actions = model.actions ?? [];
    for (var action in actions) {
      model.sync ? await action.parse(context) : action.parse(context);
    }
  }
}
