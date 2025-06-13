import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/parsers/actions/stac_delay_action/stac_delay_action.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacDelayActionParser extends StacActionParser<StacDelayAction> {
  const StacDelayActionParser();

  @override
  String get actionType => ActionType.delay.name;

  @override
  StacDelayAction getModel(Map<String, dynamic> json) =>
      StacDelayAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacDelayAction model) {
    return Future.delayed(Duration(milliseconds: model.milliseconds));
  }
}
