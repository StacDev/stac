import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/framework/stac_navigator.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

/// Parser for [StacNavigateAction] that delegates to [StacNavigator].
///
/// This parser handles all navigation styles defined in [NavigationStyle]
/// and routes them to the appropriate [StacNavigator] method.
class StacNavigateActionParser extends StacActionParser<StacNavigateAction> {
  const StacNavigateActionParser();

  @override
  String get actionType => ActionType.navigate.name;

  @override
  StacNavigateAction getModel(Map<String, dynamic> json) =>
      StacNavigateAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacNavigateAction model) {
    final navigationStyle = model.navigationStyle ?? NavigationStyle.push;

    switch (navigationStyle) {
      // ============ Path-based Navigation ============

      case NavigationStyle.go:
        StacNavigator.go(model.path!, extra: model.extra);
        return null;

      case NavigationStyle.push:
        return StacNavigator.push(model.path!, extra: model.extra);

      case NavigationStyle.pushReplacement:
        return StacNavigator.pushReplacement(model.path!, extra: model.extra);

      case NavigationStyle.pop:
        StacNavigator.pop(model.result);
        return null;

      // ============ Named Route Navigation ============

      case NavigationStyle.goNamed:
        StacNavigator.goNamed(
          model.routeName!,
          pathParameters: model.pathParameters ?? const {},
          queryParameters: model.queryParameters ?? const {},
          extra: model.extra,
        );
        return null;

      case NavigationStyle.pushNamed:
        return StacNavigator.pushNamed(
          model.routeName!,
          pathParameters: model.pathParameters ?? const {},
          queryParameters: model.queryParameters ?? const {},
          extra: model.extra,
        );

      // ============ Stac Cloud Navigation ============

      case NavigationStyle.goStac:
        StacNavigator.goStac(model.stacRoute!, extra: model.extra);
        return null;

      case NavigationStyle.pushStac:
        return StacNavigator.pushStac(model.stacRoute!, extra: model.extra);

      // ============ Dynamic Content Navigation ============

      case NavigationStyle.pushJson:
        return StacNavigator.pushJson(model.widgetJson!, args: model.extra);

      case NavigationStyle.pushAsset:
        return StacNavigator.pushAsset(model.assetPath!, args: model.extra);

      case NavigationStyle.pushNetwork:
        return StacNavigator.pushNetwork(model.request!, args: model.extra);
    }
  }
}
