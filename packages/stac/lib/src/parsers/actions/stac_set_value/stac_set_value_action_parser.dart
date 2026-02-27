import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

class StacSetValueActionParser extends StacActionParser<StacSetValueAction> {
  const StacSetValueActionParser();

  @override
  String get actionType => ActionType.setValue.name;

  @override
  StacSetValueAction getModel(Map<String, dynamic> json) =>
      StacSetValueAction.fromJson(json);

  @override
  FutureOr<dynamic> onCall(
    BuildContext context,
    StacSetValueAction model,
  ) async {
    for (final value in model.values ?? []) {
      StacRegistry.instance.setValue(value['key'] as String, value['value']);
    }
    return model.action.parse(context);
  }
}
