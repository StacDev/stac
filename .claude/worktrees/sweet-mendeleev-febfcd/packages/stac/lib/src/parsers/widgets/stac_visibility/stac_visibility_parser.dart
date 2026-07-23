import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacVisibilityParser extends StacParser<StacVisibility> {
  const StacVisibilityParser();

  @override
  String get type => WidgetType.visibility.name;

  @override
  StacVisibility getModel(Map<String, dynamic> json) =>
      StacVisibility.fromJson(json);

  @override
  Widget parse(BuildContext context, StacVisibility model) {
    final child = model.child?.parse(context) ?? const SizedBox.shrink();

    bool shouldUseMaintainConstructor =
        (model.maintainState ?? false) ||
        (model.maintainAnimation ?? false) ||
        (model.maintainSize ?? false) ||
        (model.maintainSemantics ?? false) ||
        (model.maintainInteractivity ?? false);

    if (shouldUseMaintainConstructor) {
      if (model.maintainState == false ||
          model.maintainAnimation == false ||
          model.maintainSize == false ||
          model.maintainSemantics == false ||
          model.maintainInteractivity == false) {
        shouldUseMaintainConstructor = false;
      }
    }

    if (shouldUseMaintainConstructor) {
      return Visibility.maintain(visible: model.visible ?? true, child: child);
    }

    final replacement =
        model.replacement?.parse(context) ?? const SizedBox.shrink();

    return Visibility(
      visible: model.visible ?? true,
      maintainState: model.maintainState ?? false,
      maintainAnimation: model.maintainAnimation ?? false,
      maintainSize: model.maintainSize ?? false,
      maintainSemantics: model.maintainSemantics ?? false,
      maintainInteractivity: model.maintainInteractivity ?? false,
      replacement: replacement,
      child: child,
    );
  }
}
