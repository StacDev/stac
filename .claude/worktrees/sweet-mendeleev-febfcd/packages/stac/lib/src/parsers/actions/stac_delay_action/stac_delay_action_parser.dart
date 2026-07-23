import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';
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
    final ms = model.milliseconds ?? 1000;
    return Future.delayed(Duration(milliseconds: ms));
  }
}
