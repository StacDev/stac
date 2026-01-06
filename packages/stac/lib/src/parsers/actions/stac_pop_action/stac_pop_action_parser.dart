import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacPopActionParser extends StacActionParser<StacPopAction> {
  const StacPopActionParser();

  @override
  String get actionType => ActionType.pop.name;

  @override
  StacPopAction getModel(Map<String, dynamic> json) =>
      StacPopAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacPopAction model) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context, model.result);
    }
    return null;
  }
}
