import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacNoneActionParser extends StacActionParser<dynamic> {
  const StacNoneActionParser();

  @override
  String get actionType => ActionType.none.name;

  @override
  getModel(Map<String, dynamic> json) => json;

  @override
  FutureOr<dynamic> onCall(BuildContext context, model) {}
}
