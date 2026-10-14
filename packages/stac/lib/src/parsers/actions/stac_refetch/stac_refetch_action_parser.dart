import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:stac/src/state/stac_data_providers.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

/// Sends the request of a `dataProvider` again, found by its `id`.
class StacRefetchActionParser extends StacActionParser<StacRefetchAction> {
  const StacRefetchActionParser();

  @override
  String get actionType => ActionType.refetch.name;

  @override
  StacRefetchAction getModel(Map<String, dynamic> json) =>
      StacRefetchAction.fromJson(json);

  @override
  FutureOr<dynamic> onCall(BuildContext context, StacRefetchAction model) {
    return StacDataProviders.refetch(context, model.id);
  }
}
