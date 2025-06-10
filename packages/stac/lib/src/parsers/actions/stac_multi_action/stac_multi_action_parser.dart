import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/parsers/actions/stac_multi_action/stac_multi_action.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac_framework/stac_framework.dart';

class StacMultiActionParser extends StacActionParser<StacMultiAction> {
  const StacMultiActionParser();

  @override
  String get actionType => ActionType.multiAction.name;

  @override
  StacMultiAction getModel(Map<String, dynamic> json) =>
      StacMultiAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacMultiAction model) {
    model.actions?.forEach((json) => Stac.onCallFromJson(json, context));
  }
}
