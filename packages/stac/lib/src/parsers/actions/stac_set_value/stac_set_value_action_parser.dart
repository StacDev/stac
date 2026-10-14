import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/state/stac_state_writer.dart';
import 'package:stac/stac.dart';

class StacSetValueActionParser extends StacActionParser<StacSetValueAction> {
  const StacSetValueActionParser();

  @override
  String get actionType => ActionType.setValue.name;

  @override
  StacSetValueAction getModel(Map<String, dynamic> json) =>
      StacSetValueAction.fromJson(json);

  @override
  FutureOr<dynamic> onCall(BuildContext context, StacSetValueAction model) {
    StacStateWriter.apply(context, model.values);
    return model.action.parse(context);
  }
}
