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
      StacRegistry.instance.setValue(
        value['key'] as String,
        // `expression` is evaluated now, so `count + 1` increments.
        value['expression'] is String
            ? ExpressionResolver.evaluate(value['expression'] as String)
            : value['value'],
        persist: value['persist'] == true,
      );
    }
    return model.action.parse(context);
  }
}
