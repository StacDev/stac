import 'dart:async';

import 'package:flutter/widgets.dart';

abstract class StacActionParser<T> {
  const StacActionParser();

  String get actionType;

  T getModel(Map<String, dynamic> json);

  FutureOr<dynamic> onCall(BuildContext context, T model);
}
