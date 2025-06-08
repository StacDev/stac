import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_image_filter/stac_image_filter.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_backdrop_filter.dart';

class StacBackdropFilterParser extends StacParser<StacBackdropFilter> {
  const StacBackdropFilterParser();

  @override
  String get type => WidgetType.backdropFilter.name;

  @override
  StacBackdropFilter getModel(Map<String, dynamic> json) =>
      StacBackdropFilter.fromJson(json);

  @override
  Widget parse(BuildContext context, StacBackdropFilter model) {
    final child = Stac.fromJson(model.child, context) ?? const SizedBox();

    if (!model.enabled) {
      return child;
    }

    final imageFilter = model.filter.parse();
    if (imageFilter == null) {
      return child;
    }

    return BackdropFilter(
      filter: imageFilter,
      blendMode: model.blendMode,
      child: child,
    );
  }
}
