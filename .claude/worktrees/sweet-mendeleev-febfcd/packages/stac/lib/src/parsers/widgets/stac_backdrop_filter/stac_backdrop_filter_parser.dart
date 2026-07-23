import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/colors/stac_blend_mode_parser.dart';
import 'package:stac/src/parsers/foundation/effects/stac_image_filter_parsers.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacBackdropFilterParser extends StacParser<StacBackdropFilter> {
  const StacBackdropFilterParser();

  @override
  String get type => WidgetType.backdropFilter.name;

  @override
  StacBackdropFilter getModel(Map<String, dynamic> json) =>
      StacBackdropFilter.fromJson(json);

  @override
  Widget parse(BuildContext context, StacBackdropFilter model) {
    return BackdropFilter(
      filter: model.filter.parse,
      blendMode: (model.blendMode ?? StacBlendMode.srcOver).parse,
      enabled: model.enabled ?? true,
      child: model.child?.parse(context) ?? const SizedBox(),
    );
  }
}
