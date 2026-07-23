import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSafeAreaParser extends StacParser<StacSafeArea> {
  const StacSafeAreaParser();

  @override
  String get type => WidgetType.safeArea.name;

  @override
  StacSafeArea getModel(Map<String, dynamic> json) =>
      StacSafeArea.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSafeArea model) {
    final child = model.child?.parse(context) ?? const SizedBox.shrink();

    return SafeArea(
      left: model.left ?? true,
      top: model.top ?? true,
      right: model.right ?? true,
      bottom: model.bottom ?? true,
      minimum: model.minimum?.parse ?? EdgeInsets.zero,
      maintainBottomViewPadding: model.maintainBottomViewPadding ?? false,
      child: child,
    );
  }
}
