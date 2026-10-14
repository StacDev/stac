import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacNavigateActionParser extends StacActionParser<StacNavigateAction> {
  const StacNavigateActionParser();

  @override
  String get actionType => ActionType.navigate.name;

  @override
  StacNavigateAction getModel(Map<String, dynamic> json) =>
      StacNavigateAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacNavigateAction model) {
    // Stac destinations are built inside their new route, each with its own
    // screen state, and receive `arguments` as `$args`.
    final arguments = model.arguments ?? const <String, dynamic>{};
    WidgetBuilder? builder;
    if (model.widgetJson != null) {
      final json = model.widgetJson;
      builder = (_) => StacScreenScope(
        arguments: arguments,
        child: Builder(
          builder: (screen) => Stac.fromJson(json, screen) ?? const SizedBox(),
        ),
      );
    } else if (model.request != null) {
      final request = model.request!;
      builder = (_) => StacScreenScope(
        arguments: arguments,
        debugLabel: request.url,
        child: Builder(
          builder: (screen) =>
              Stac.fromNetwork(context: screen, request: request),
        ),
      );
    } else if (model.assetPath != null) {
      final assetPath = model.assetPath!;
      builder = (_) => StacScreenScope(
        arguments: arguments,
        debugLabel: assetPath,
        child: Stac.fromAssets(assetPath),
      );
    } else if (model.routeName != null &&
        (model.navigationStyle == null ||
            model.navigationStyle == NavigationStyle.push ||
            model.navigationStyle == NavigationStyle.pushReplacement ||
            model.navigationStyle == NavigationStyle.pushAndRemoveAll)) {
      // A routeName with a push-style navigation renders the remote screen.
      final routeName = model.routeName!;
      builder = (_) => Stac(routeName: routeName, arguments: arguments);
    }
    return _navigate(
      context: context,
      navigationStyle: model.navigationStyle ?? NavigationStyle.push,
      routeName: model.routeName,
      result: model.result,
      arguments: model.arguments,
      builder: builder,
    );
  }

  static Future<dynamic>? _navigate<T extends Object?>({
    required BuildContext context,
    NavigationStyle navigationStyle = NavigationStyle.push,
    WidgetBuilder? builder,
    String? routeName,
    T? result,
    T? arguments,
  }) {
    final pageBuilder = builder ?? (_) => const SizedBox();
    switch (navigationStyle) {
      case NavigationStyle.push:
        return Navigator.push(context, MaterialPageRoute(builder: pageBuilder));

      case NavigationStyle.pop:
        Navigator.pop(context, result);
        break;

      case NavigationStyle.pushReplacement:
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: pageBuilder),
          result: result,
        );

      case NavigationStyle.pushAndRemoveAll:
        return Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: pageBuilder),
          ModalRoute.withName('/'),
        );

      case NavigationStyle.popAll:
        Navigator.popUntil(context, ModalRoute.withName('/'));
        break;

      case NavigationStyle.pushNamed:
        return Navigator.pushNamed(context, routeName!, arguments: arguments);

      case NavigationStyle.pushNamedAndRemoveAll:
        return Navigator.pushNamedAndRemoveUntil(
          context,
          routeName!,
          ModalRoute.withName('/'),
          arguments: arguments,
        );

      case NavigationStyle.pushReplacementNamed:
        return Navigator.pushReplacementNamed(
          context,
          routeName!,
          result: result,
          arguments: arguments,
        );
    }

    return null;
  }
}
