import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_logger/stac_logger.dart';

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
      final key = value['key'] as String;
      final expression = value['expression'];
      final Object? newValue;
      if (expression is String) {
        // Evaluated now, so `count + 1` increments. An expression that
        // fails keeps the current value rather than removing it.
        try {
          newValue = ExpressionResolver.evaluateOrThrow(expression);
        } catch (e) {
          Log.w('Not setting $key: could not evaluate "$expression": $e');
          continue;
        }
      } else {
        newValue = value['value'];
      }
      StacRegistry.instance.setValue(
        key,
        newValue,
        persist: value['persist'] == true,
      );
    }
    return model.action.parse(context);
  }
}
