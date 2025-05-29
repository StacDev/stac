import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_visibility/stac_visibility.dart';
import 'package:stac/src/utils/widget_type.dart';
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
    final child =
        Stac.fromJson(model.child, context) ?? const SizedBox.shrink();

    final useMaintainConstructor = model.maintainState == true &&
        model.maintainAnimation == true &&
        model.maintainSize == true &&
        model.maintainSemantics == true &&
        model.maintainInteractivity == true;

    if (useMaintainConstructor) {
      return Visibility.maintain(
        visible: model.visible ?? true,
        child: child,
      );
    }
    final replacement =
        Stac.fromJson(model.replacement, context) ?? const SizedBox.shrink();

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
