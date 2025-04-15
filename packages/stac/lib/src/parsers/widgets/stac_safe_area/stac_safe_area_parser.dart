import 'package:flutter/widgets.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_safe_area.dart';

class StacSafeAreaParser extends StacParser<StacSafeArea> {
  const StacSafeAreaParser();

  @override
  StacSafeArea getModel(Map<String, dynamic> json) =>
      StacSafeArea.fromJson(json);

  @override
  String get type => WidgetType.safeArea.name;

  @override
  Widget parse(BuildContext context, StacSafeArea model) {
    return SafeArea(
      maintainBottomViewPadding: model.maintainBottomViewPadding,
      left: model.left,
      top: model.top,
      right: model.right,
      bottom: model.bottom,
      minimum: model.minimum.parse,
      child: Stac.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
