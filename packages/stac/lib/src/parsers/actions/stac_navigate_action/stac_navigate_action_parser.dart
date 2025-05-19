import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/actions/stac_navigate_action/stac_navigate_action.dart';
import 'package:stac/src/utils/action_type.dart';
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
    Widget? widget;
    if (model.widgetJson != null) {
      widget = Stac.fromJson(model.widgetJson, context);
    } else if (model.request != null) {
      widget = Stac.fromNetwork(context: context, request: model.request!);
    } else if (model.assetPath != null) {
      widget = Stac.fromAssets(model.assetPath!);
    }
    return _navigate(
      context: context,
      navigationStyle: model.navigationStyle ?? NavigationStyle.push,
      routeName: model.routeName,
      result: model.result,
      arguments: model.arguments,
      widget: widget,
    );
  }

  static Future<dynamic>? _navigate<T extends Object?>({
    required BuildContext context,
    NavigationStyle navigationStyle = NavigationStyle.push,
    Widget? widget,
    String? routeName,
    T? result,
    T? arguments,
  }) {
    switch (navigationStyle) {
      case NavigationStyle.push:
        return Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => widget ?? const SizedBox()),
        );

      case NavigationStyle.pop:
        Navigator.pop(context, result);
        break;

      case NavigationStyle.pushReplacement:
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => widget ?? const SizedBox()),
          result: result,
        );

      case NavigationStyle.pushAndRemoveAll:
        return Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => widget ?? const SizedBox()),
          ModalRoute.withName('/'),
        );

      case NavigationStyle.popAll:
        Navigator.popUntil(context, ModalRoute.withName('/'));
        break;

      case NavigationStyle.pushNamed:
        return Navigator.pushNamed(
          context,
          routeName!,
          arguments: arguments,
        );

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
