import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_inkwell/stac_inkwell.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacInkwellParser extends StacParser<StacInkWell> {
  const StacInkwellParser();
  @override
  String get type => WidgetType.inkWell.name;
  @override
  StacInkWell getModel(Map<String, dynamic> json) {
    return StacInkWell.fromJson(json);
  }

  @override
  Widget parse(BuildContext context, StacInkWell model) {
    return InkWell(
      onTap: () => Stac.onCallFromJson(model.onTap, context),
      child: Stac.fromJson(model.child, context),
    );
  }
}
